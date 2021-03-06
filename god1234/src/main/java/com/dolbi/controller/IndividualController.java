package com.dolbi.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.dolbi.common.Util;
import com.dolbi.model.dao.IndividualDao;
import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Category;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;

@Controller
@RequestMapping("/individual")
public class IndividualController {
	
	@Resource(name = "individualDao")
	private IndividualDao individualDao;
	
	@RequestMapping(value = "individualmain.action", method = RequestMethod.GET)
	public String individualmain(String memberId, Model model) {
		
		String resume = String.valueOf(individualDao.getcountResumeById(memberId));
		model.addAttribute("resume", resume);
		
		Member member = individualDao.getIndividualById(memberId);
		model.addAttribute("member", member);
		
		List<Category> likedcategorylist = individualDao.getlikedcategorylist(memberId);
		model.addAttribute("likedcategorylist", likedcategorylist);
		
		
		return "individual/individualmain";
	}
	
	
	@RequestMapping(value = "resumeservice.action", method = RequestMethod.GET)
	public String resumeservice(String memberId) {
		
		String resume = String.valueOf(individualDao.getcountResumeById(memberId));
		
		if (resume.equals("0")) {
			return "redirect:/individual/resumeform.action?memberId=" + memberId;
		} else {
			return "redirect:/individual/resumeview.action?memberId=" + memberId;
		}
		
		
	}
	
	@RequestMapping(value = "resumeview.action", method = RequestMethod.GET)
	public String resumeview(String memberId, Model model) {
		
		Member member = individualDao.getIndividualById(memberId);
		model.addAttribute("member", member);
		
		Resume resume = individualDao.getResumeById(memberId);
		model.addAttribute("resume", resume);
		
		ResumeAttachment reAtt = individualDao.getResumeAttachmentById(memberId);
		model.addAttribute("reAtt", reAtt);
		
		List<Career> careers = individualDao.getCareerById(memberId);
		model.addAttribute("careers", careers);
		
		List<Education> educations = individualDao.getEducationById(memberId);
		model.addAttribute("educations", educations);
	
		return "individual/resumeview";
		
	}
	
	@RequestMapping(value = "resumeform.action", method = RequestMethod.GET)
	public String resumeform(String memberId, Model model) {
		
		Member member = individualDao.getIndividualById(memberId);
		model.addAttribute("member", member);
		
		return "individual/resumeform";
		
	}
	
	@RequestMapping(value = "resumeform.action", method = RequestMethod.POST)
	public String resumeRegister(MultipartHttpServletRequest request, String memberId) throws Exception {
		
		//�뾽濡쒕뱶�맂 �뙆�씪�쓣 ���옣�븷 寃쎈줈 (媛��긽寃쎈줈 -> 臾쇰━寃쎈줈) 異붿텧
		String path = request.getSession().getServletContext().getRealPath("/resources/resume");
				
		//Upload 媛앹껜 �깮�꽦 諛� �뙆�씪�씠 �븘�땶 �뜲�씠�꽣 ���옣
		
		Resume resume = new Resume();
		resume.setMemberId(memberId);
		resume.setResumeTitle(request.getParameter("resumetitle"));
		resume.setSelfintroduction(request.getParameter("selfintroduction"));
		if (request.getParameter("ispublic").equals("공개")) {
			resume.setIspublic(true);
		} else {
			resume.setIspublic(false);
		}
		
	
		try {
			System.out.println("resume");
			individualDao.insertResume(resume);
			System.out.println("resume2");
			
			Iterator<String> iterator = request.getFileNames();		
			while (iterator.hasNext()) {
				System.out.println("resumeattachment1");
				String fileName = iterator.next();
				MultipartFile file = request.getFile(fileName);
						
				if (file != null && file.getSize() > 0) {
						
					String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
					
					ResumeAttachment temp = new ResumeAttachment();
					temp.setResumeSavedFilename(savedName);
					temp.setResumeFilename(file.getOriginalFilename());
					temp.setMemberId(memberId);
					
					System.out.println("resumeattachment2");
					individualDao.insertResumeAttachment(temp);
					System.out.println("resumeattachment3");
							
					//int x = 10 / 0;//force throw exception
							
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
			
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
			
			//Career
			System.out.println("career");
			int i = 0;
			careerinsert : while (i < 3) { 
				if (!request.getParameter("companyName"+i).isEmpty()) {
			
					Career career = new Career();
					career.setCompanyName(request.getParameter("companyName"+i));
					career.setCompanyType(request.getParameter("companyType"+i));
					Date caStartDate = transFormat.parse(request.getParameter("caStartDate"+i));
					career.setCaStartDate(caStartDate);
					Date caEndDate = transFormat.parse(request.getParameter("caEndDate"+i));
					career.setCaEndDate(caEndDate);
					career.setMemberId(memberId);
					individualDao.insertCareer(career);
					i++;
				} else {
					break careerinsert;
				}
				
			}
			
			//Education
			System.out.println("edu");
			i = 0;
			eduinsert : while (i < 3) { 
				if (!request.getParameter("schoolName"+i).isEmpty()) {
					Education edu = new Education();
					edu.setSchoolName(request.getParameter("schoolName"+i));
					edu.setMajor(request.getParameter("major"+i));
					Date edStartDate = transFormat.parse(request.getParameter("edStartDate"+i));
					edu.setEdStartDate(edStartDate);
					Date edEndDate = transFormat.parse(request.getParameter("edEndDate"+i));
					edu.setEdEndDate(edEndDate);
					edu.setMemberId(memberId);
					individualDao.insertEducation(edu);
					i++;
				} else {
					break eduinsert;
				}
			}
			
		} catch (Exception ex) {
			ex.printStackTrace();
		throw new RuntimeException("redirect:/individual/resumeform.action?memberId=" + memberId);
		}
		
		return "redirect:/individual/individualmain.action?memberId=" + memberId;
		
	}

	@RequestMapping(value = "applicationlist.action", method = RequestMethod.GET)
	public String applicationlist(String memberId, Model model) {
		
		List<Application> applications = individualDao.getApplicationList(memberId);
		model.addAttribute("applications", applications);
		
		return "individual/applicationlist";
		
	}
	
	@RequestMapping(value = "recommendationlist.action", method = RequestMethod.GET)
	public String recommendationlist(String memberId, Model model) {
		
		//1.관심 카테고리 넘버 리스트로 받아오기
		List<Category> categorys = individualDao.getCategoryList(memberId);
		
		//2.리스트수만큼 jobboard받아오는 반복문 돌리기
		
		int i = 0;
		
		for(Category category : categorys) {
			List<Jobboard> jobboards = individualDao.getJobboardList(category.getCategoryNo());
			model.addAttribute("jobboards"+i, jobboards);
			model.addAttribute("categoryname"+i, category.getCategoryName());
			i++;
		}
		
		model.addAttribute("indexNo", i);
		
		return "individual/recommendationlist";
	}
	
	   @RequestMapping(value = "deleteapplication.action", method = RequestMethod.GET)
		public String deleteapplication(String applicationNo, String memberId) {
			
			individualDao.deleteApplication(Integer.parseInt(applicationNo));

			return "redirect:/individual/applicationlist.action?memberId="+memberId;
		}
	   
	   @RequestMapping(value = "updateindividaul.action", method = RequestMethod.POST)
		public String updateIndividaul(Member member) {
		   
		   	individualDao.updateIndividaul1(member);
		   	individualDao.updateIndividaul2(member);
		   	
		   	individualDao.deleteCategory(member.getMemberId());
		   
		   	if (member.getService() == 1) {
				
		   		individualDao.insertCategory(member.getMemberId(), member.getService());
				
			}
			if (member.getSale() == 2) {
				
				individualDao.insertCategory(member.getMemberId(), member.getSale());
				
			}
			if (member.getOffice() == 3) {
				
				individualDao.insertCategory(member.getMemberId(), member.getOffice());
				
			}
			if (member.getConstruction() == 4) {
				
				individualDao.insertCategory(member.getMemberId(), member.getConstruction());
				
			}
			if (member.getProduction() == 5) {
				
				individualDao.insertCategory(member.getMemberId(), member.getProduction());
				
			}
			if (member.getIt() == 6) {
				
				individualDao.insertCategory(member.getMemberId(), member.getIt());
				
			}
			if (member.getDesign() == 7) {
				
				individualDao.insertCategory(member.getMemberId(), member.getDesign());
				
			}
			if (member.getEducation() == 8) {
				
				individualDao.insertCategory(member.getMemberId(), member.getEducation());
				
			}
		   
			return "redirect:/individual/individualmain.action?memberId="+member.getMemberId();
		}

}

