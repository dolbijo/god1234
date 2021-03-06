package com.dolbi.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dolbi.common.Util;
import com.dolbi.model.dao.JobboardDao;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;

import com.dolbi.model.dto.Member;

import com.dolbi.util.PageUtil;


@Controller
@RequestMapping("/jobboard")
public class JobBoardController {
   
   @Resource(name = "jobboardDao")
   private JobboardDao jobboardDao;
   
   
   @RequestMapping(value = "list.action", method = RequestMethod.GET)
   public String list(int pageNum, Model model) throws Exception {
      
	   int totalRowCount = jobboardDao.getCount();
	   
	   PageUtil pu = new PageUtil(pageNum, totalRowCount, 10, 10);
	   
	   HashMap<String, Object> map = new HashMap<String,Object>();
	   map.put("startRow", pu.getStartRow());
	   map.put("endRow", pu.getEndRow());
	   
	   List<Jobboard> jobboards = jobboardDao.getJobboardList(map);
	   model.addAttribute("jobboards", jobboards);
	   model.addAttribute("pu", pu);
	   
	   return "jobboard/jobboardlist";
   }
   
				
   
   
   @RequestMapping(value = "write.action", method = RequestMethod.POST)
	public String getJobboardWriteForm(MultipartHttpServletRequest request) throws Exception {

		//업로드된 파일을 저장할 경로 (가상경로 -> 물리경로) 추출
		String path = request.getSession().getServletContext().getRealPath("/resources/uploadfiles");
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		//Upload 객체 생성 및 파일이 아닌 데이터 저장
		Jobboard jobboard = new Jobboard();      
	    jobboard.setJobboardTitle(request.getParameter("title"));
	    jobboard.setJobboardContent(request.getParameter("content"));
	    jobboard.setJobboardJoinNo(Integer.parseInt(request.getParameter("joinnum")));
	    jobboard.setJobboardGender(request.getParameter("gender"));
	    jobboard.setJobboardEducation(request.getParameter("edu"));
	    jobboard.setMemberName(request.getParameter("memberName"));
	    jobboard.setMemberId(request.getParameter("uploader"));
	    jobboard.setJobboardPayment(request.getParameter("payment"));
	    jobboard.setJobboardSalary(Integer.parseInt(request.getParameter("salary")));
	    jobboard.setJobboardCareer(request.getParameter("career"));
	    jobboard.setJobboardAge(request.getParameter("birthday"));
	    jobboard.setJobboardPhone(Integer.parseInt(request.getParameter("phoneNo")));
	    jobboard.setJobboardemail(request.getParameter("email"));
	    
	    //jobboard.setJobboardAge(Integer.parseInt(request.getParameter("birthday")));
	    
	    Date deadline = transFormat.parse(request.getParameter("deadline"));
		jobboard.setJobboardDeadLine(deadline);
		
		String[] category = request.getParameterValues("ca");
		String categoryTag = "";
		
		for(int i = 0; i < category.length; i++) {
			categoryTag = categoryTag + category[i];
		}
		
		jobboard.setCategoryTag(categoryTag);
		
		//아래 try 영역 내부에서 오류가 발생하면 모든 db연동 작업을 취소하도록 처리
		try {
			int newJobboardNo = jobboardDao.insertJobboard(jobboard);			
			System.out.println("jobboardDaoinsertfile : "+newJobboardNo);
			
			Iterator<String> iterator = request.getFileNames();			
			while (iterator.hasNext()) {
			
				String fileName = iterator.next();
				MultipartFile file = request.getFile(fileName);
				
				if (file != null && file.getSize() > 0) {
					
					String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
			
					JobboardAttachment temp = new JobboardAttachment();
					temp.setSavedFileName(savedName);
					temp.setUserFileName(file.getOriginalFilename());
					temp.setJobboardNo(jobboard.getJobboardNo());
					jobboardDao.insertJobboardFile(temp);
					
					FileOutputStream ostream = new FileOutputStream(path + "/" + savedName);
					InputStream istream = file.getInputStream();
					byte[] buffer = new byte[512];
					while (true) {
						int count = istream.read(buffer, 0, buffer.length);
						if (count == -1) break;
						ostream.write(buffer, 0, count);
					}
					
					istream.close();
					ostream.close();					
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			throw new RuntimeException("redirect:/upload/list.action");
		}

		return "redirect:/jobboard/list.action?pageNum=1";
	}
	
   
   @RequestMapping(value = "updatecount.action", method = RequestMethod.GET)
	public String updatecount(String jobboardNo) {
		
		jobboardDao.updateCount(Integer.parseInt(jobboardNo));

		return "redirect:/jobboard/view.action?jobboardNo="+jobboardNo;
	}
   
   @RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String getJobboard(String jobboardNo, Model model) {
		
		Jobboard jobboard = jobboardDao.getJobboardByJobboardNo(Integer.parseInt(jobboardNo));
		Member company = jobboardDao.getCompanyByMemberId(jobboard.getMemberId());
		
		model.addAttribute("company", company);
		model.addAttribute("jobboard", jobboard);
		
		return "jobboard/jobboardview";
	}
   
   @RequestMapping(value = "register.action", method = RequestMethod.GET)
   public String registerForm(String memberId, Model model) {
	  
	  int jobboardCaNo = jobboardDao.getJobboardNoByMemberId(memberId);
	  
	  model.addAttribute("jobboardCaNo", jobboardCaNo);
	  
      return "jobboard/jobboardwriteform";
   }
   
   @RequestMapping(value = "register.action", method = RequestMethod.POST)
   public String register(Member member) {
  
      return "redirect:/jobboard/list.action";
   }
   
   @RequestMapping(value = "edit.action", method = RequestMethod.GET)
   public String editForm(String memberId, int jobboardNo, Model model) {
	   
	   Jobboard jobboard1 = jobboardDao.getJobboardByJobboardNo(jobboardNo);
	   
	   int jobboardCaNo = jobboardDao.getJobboardNoByMemberId(memberId);
		  
	   model.addAttribute("jobboardCaNo", jobboardCaNo);
	   
	   model.addAttribute("jobboard",jobboard1);
	   model.addAttribute("jobboardNo", jobboardNo);
	   
	   return "jobboard/jobboardeditform";
      
   }
   

	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(MultipartHttpServletRequest request) throws ParseException {//읽기 + view로 전달

		
		//업로드된 파일을 저장할 경로 (가상경로 -> 물리경로) 추출
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/uploadfiles");
		
		//jobboardNo 로 첨부파일 delete문구
		int jobboardNo = Integer.parseInt(request.getParameter("jobboardNo"));
		
		jobboardDao.deleteJobboardAttachmentByJobboardNo(jobboardNo);
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		//Upload 객체 생성 및 파일이 아닌 데이터 저장
		Jobboard jobboard = new Jobboard();  
		jobboard.setJobboardNo(jobboardNo);
		jobboard.setJobboardTitle(request.getParameter("title"));
		jobboard.setJobboardContent(request.getParameter("content"));
		jobboard.setJobboardJoinNo(Integer.parseInt(request.getParameter("joinnum")));
		jobboard.setJobboardGender(request.getParameter("gender"));
		jobboard.setJobboardEducation(request.getParameter("edu"));
		jobboard.setMemberName(request.getParameter("memberName"));
		jobboard.setMemberId(request.getParameter("uploader"));
		jobboard.setJobboardPayment(request.getParameter("payment"));
		jobboard.setJobboardSalary(Integer.parseInt(request.getParameter("salary")));
		jobboard.setJobboardCareer(request.getParameter("career"));
		jobboard.setJobboardAge(request.getParameter("birthday"));
		jobboard.setJobboardPhone(Integer.parseInt(request.getParameter("phoneNo")));
		jobboard.setJobboardemail(request.getParameter("email"));
		    
		Date deadline = transFormat.parse(request.getParameter("deadline"));
		jobboard.setJobboardDeadLine(deadline);
				
		String[] category = request.getParameterValues("ca");
		String categoryTag = "";
				
		for(int i = 0; i < category.length; i++) {
			categoryTag = categoryTag + category[i];
		}

		jobboard.setCategoryTag(categoryTag);
				
		//아래 try 영역 내부에서 오류가 발생하면 모든 db연동 작업을 취소하도록 처리
		try {
			//editjobboard
			jobboardDao.updateJobboard(jobboard);			
		
			Iterator<String> iterator = request.getFileNames();			
			while (iterator.hasNext()) {
					
				String fileName = iterator.next();
				MultipartFile file = request.getFile(fileName);
						
				if (file != null && file.getSize() > 0) {
							
				String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
					
				JobboardAttachment temp = new JobboardAttachment();
				temp.setSavedFileName(savedName);
				temp.setUserFileName(file.getOriginalFilename());
				temp.setJobboardNo(jobboardNo);
				jobboardDao.insertJobboardFile(temp);
							
				FileOutputStream ostream = new FileOutputStream(path + "/" + savedName);
				InputStream istream = file.getInputStream();
				byte[] buffer = new byte[512];
				while (true) {
					int count = istream.read(buffer, 0, buffer.length);
					if (count == -1) break;
					ostream.write(buffer, 0, count);
				}
							
					istream.close();
					ostream.close();					
			}
		}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return "redirect:/jobboard/view.action?jobboardNo=" + jobboardNo;
	}

   
   @RequestMapping(value = "application.action", method = RequestMethod.GET)
   public String application(String memberId, String jobboardNo) {//HttpServletRequest.setAttribute("member", member)
      
	   jobboardDao.insertApplication(memberId, jobboardNo);
	   
       return "redirect:/jobboard/view.action?jobboardNo="+jobboardNo;
      
   }
   
   
   @RequestMapping(value = "searchcategory.action", method = RequestMethod.GET)
   public String searchCategory(String memberId, String jobboardNo) {//HttpServletRequest.setAttribute("member", member)


       return "jobboard/searchform";
      
   }
   
   @RequestMapping(value = "search.action", method = RequestMethod.POST)
   public String search(String[] ca, Model model) {//HttpServletRequest.setAttribute("member", member)

	   for(int i = 0; i < ca.length; i++) {
		   
		   List<Jobboard> jobboards = jobboardDao.getsearchList("%"+ca[i]+"%");
		   model.addAttribute("jobboards"+i, jobboards);
		   model.addAttribute("searchtag"+i, ca[i]);
		   
	   }
	   
	   model.addAttribute("indexNo", ca.length);
	   
       return "jobboard/searchlist";
      
   }
   

}












