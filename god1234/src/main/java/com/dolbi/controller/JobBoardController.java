package com.dolbi.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dolbi.common.Util;
import com.dolbi.model.dao.IndividualDao;
import com.dolbi.model.dao.JobboardDao;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.service.IndividualService;

@Controller
@RequestMapping("/jobboard")
public class JobBoardController {
   
   @Resource(name = "jobboardDao")
   private JobboardDao jobboardDao;
   
   
   @RequestMapping(value = "list.action", method = RequestMethod.GET)
   public ModelAndView list(Model model) {
      
		List<Jobboard> jobboards = jobboardDao.getJobboardList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("jobboards", jobboards);
		mav.setViewName("jobboard/jobboardlist");
		
		return mav;
   }
   
   @RequestMapping(value = "write.action", method = RequestMethod.POST)
	public String getJobboardWriteForm(MultipartHttpServletRequest request) throws Exception {

		//업로드된 파일을 저장할 경로 (가상경로 -> 물리경로) 추출
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/uploadfiles");
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat transFormat2 = new SimpleDateFormat("yyyy");
		//Upload 객체 생성 및 파일이 아닌 데이터 저장
		Jobboard jobboard = new Jobboard();      
	    jobboard.setJobboardTitle(request.getParameter("title"));
	    jobboard.setJobboardContent(request.getParameter("content"));
	    jobboard.setJobboardJoinNo(Integer.parseInt(request.getParameter("joinnum")));
	    jobboard.setJobboardGender(request.getParameter("gender"));
	    jobboard.setJobboardEducation(request.getParameter("edu"));
	    jobboard.setMemberId(request.getParameter("uploader"));
	    jobboard.setJobboardPayment(request.getParameter("payment"));
	    jobboard.setJobboardSalary(Integer.parseInt(request.getParameter("salary")));
	    jobboard.setJobboardCareer(request.getParameter("career"));
	    jobboard.setJobboardAge(Integer.parseInt(request.getParameter("birthday")));
	    Date deadline = transFormat.parse(request.getParameter("deadline"));
		jobboard.setJobboardDeadLine(deadline);
		
		//아래 try 영역 내부에서 오류가 발생하면 모든 db연동 작업을 취소하도록 처리
		try {
			int newJobboardNo = jobboardDao.insertJobboard(jobboard);			
			
			Iterator<String> iterator = request.getFileNames();			
			while (iterator.hasNext()) {
			
				String fileName = iterator.next();
				MultipartFile file = request.getFile(fileName);
				
				if (file != null && file.getSize() > 0) {
					
					String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
			
					JobboardAttachment temp = new JobboardAttachment();
					temp.setSavedFileName(savedName);
					temp.setUserFileName(file.getOriginalFilename());
					temp.setJobboardNo(newJobboardNo);
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

		return "redirect:/jobboard/list.action";
	}
	
   
   
   @RequestMapping(value = "view.action", method = RequestMethod.GET)
	public ModelAndView getJobboard(String jobboardNo) {
		ModelAndView mav = new ModelAndView();
		Jobboard jobboard = jobboardDao.getJobboardByJobboardNo(Integer.parseInt(jobboardNo));
		mav.addObject(jobboard);
		mav.setViewName("jobboard/jobboardview");
		return mav;
	}
   
   @RequestMapping(value = "register.action", method = RequestMethod.GET)
   public String registerForm() {
      return "jobboard/jobboardwriteform";
   }
   
   @RequestMapping(value = "register.action", method = RequestMethod.POST)
   public String register(Member member) {
      
	   
      
      
      return "redirect:/jobboard/list.action";
   }
   
   @RequestMapping(value = "edit.action", method = RequestMethod.GET)
   public String editForm(
      @RequestParam("memberid") String memberId,      
      @ModelAttribute("member") Member member) {//HttpServletRequest.setAttribute("member", member)
      
         return "jobboard/editform";
      
   }
   
   @RequestMapping(value = "application.action", method = RequestMethod.GET)
   public String application(String memberId, String jobboardNo) {//HttpServletRequest.setAttribute("member", member)
      
	   jobboardDao.insertApplication(memberId, jobboardNo);
	   
       return "redirect:/jobboard/view.action?jobboardNo="+jobboardNo;
      
   }

}












