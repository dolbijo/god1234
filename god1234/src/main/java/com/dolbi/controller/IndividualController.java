package com.dolbi.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
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
import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.service.IndividualService;

@Controller
@RequestMapping("/individual")
public class IndividualController {
	
	@Resource(name = "individualDao")
	private IndividualDao individualDao;
	
	@RequestMapping(value = "individualmain.action", method = RequestMethod.GET)
	public String individualmain(String memberId, Model model) {
		
		ModelAndView mav = new ModelAndView();
		String resume = String.valueOf(individualDao.getResumeById(memberId));
		
		System.out.println("individualController resume : " + resume);
		model.addAttribute("resume", resume);
		
		return "individual/individualmain";
	}
	
	@RequestMapping(value = "resumeview.action", method = RequestMethod.GET)
	public String resumeview(String memberId) {
		
		return "individual/resumeview";
		
	}
	
	@RequestMapping(value = "resumeform.action", method = RequestMethod.GET)
	public String resumeform(String memberId, Model model) {
		
		System.out.println("individualController resumeform ");
		Member member = individualDao.getIndividualById(memberId);
		model.addAttribute("member", member);
		
		return "individual/resumeform";
		
	}
	
	@RequestMapping(value = "resumeform.action", method = RequestMethod.POST)
	public String resumeRegister(MultipartHttpServletRequest request, String memberId) throws Exception {
		
		//업로드된 파일을 저장할 경로 (가상경로 -> 물리경로) 추출
		String path = request.getSession().getServletContext().getRealPath("/WEB-INF/resume");
				
		//Upload 객체 생성 및 파일이 아닌 데이터 저장
		
		Resume resume = new Resume();
		resume.setMemberId(memberId);
		resume.setResumeTitle(request.getParameter("resumetitle"));
		resume.setSelfintroduction(request.getParameter("selfintroduction"));
		if (request.getParameter("ispublic").equals("공개")) {
			resume.setIspublic(true);
		} else {
			resume.setIspublic(false);
		}
		
		
		//아래 try 영역 내부에서 오류가 발생하면 모든 db연동 작업을 취소하도록 처리
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
		
		return "redirect:/individual/resumeview.action?memberId=" + memberId;
		
	}

	@RequestMapping(value = "applicationlist.action", method = RequestMethod.GET)
	public String applicationlist(String memberId) {
		
		return "individual/applicationlist";
		
	}
	
	@RequestMapping(value = "recommendationlist.action", method = RequestMethod.GET)
	public String recommendationlist() {
		return "individual/recommendationlist";
	}

}














