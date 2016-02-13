package com.dolbi.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dolbi.model.dao.CompanyDao;
import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;
import com.dolbi.model.service.MemberService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	
	@Resource(name = "companyDao")
	private CompanyDao companyDao;
	
	@Autowired()
	@Qualifier("memberService")
	private MemberService memberService;
	
	@RequestMapping(value = "servicemain.action", method = RequestMethod.GET)
	public String servicemain() {
		
		return "company/servicemain";
	}
	
	@RequestMapping(value = "ingjobboard.action", method = RequestMethod.GET)
	public String ingJobboard(String memberId, Model model) {
		
		List<Jobboard> jobboards = companyDao.ingJobboard(memberId);
		model.addAttribute("jobboards", jobboards);
		
		return "company/jobboardlist";
	}
	@RequestMapping(value = "endjobboard.action", method = RequestMethod.GET)
	public String endJobboard(String memberId, Model model) {
		
		List<Jobboard> jobboards = companyDao.endJobboard(memberId);
		model.addAttribute("jobboards", jobboards);
		
		return "company/jobboardlist";
	}
	
	@RequestMapping(value = "applicationlist.action", method = RequestMethod.GET)
	public String applicationlist(int jobboardNo, Model model) {
		
		List<Application> applications = companyDao.applicationList(jobboardNo);
		model.addAttribute("applications", applications);
		
		return "company/applicationlist";
	}
	
	@RequestMapping(value = "updateischeck.action", method = RequestMethod.GET)
	public String updateischeck(int applicationNo, String memberId) {
		
		companyDao.updateApplication(applicationNo);
		
		return "redirect:/company/resumeview.action?memberId=" + memberId;
	}
	
	@RequestMapping(value = "resumeview.action", method = RequestMethod.GET)
	public String resumeview(String memberId, Model model) {
		
		Member member = companyDao.getIndividualById(memberId);
		model.addAttribute("member", member);
		
		Resume resume = companyDao.getResumeById(memberId);
		model.addAttribute("resume", resume);
		
		ResumeAttachment reAtt = companyDao.getResumeAttachmentById(memberId);
		model.addAttribute("reAtt", reAtt);
		
		List<Career> careers = companyDao.getCareerById(memberId);
		model.addAttribute("careers", careers);
		
		List<Education> educations = companyDao.getEducationById(memberId);
		model.addAttribute("educations", educations);
	
		return "company/resumeview";
		
	}
	
	@RequestMapping(value = "resumelist.action", method = RequestMethod.GET)
	public String applicationList(Model model) {

		//리스트 가져오기
		List<Resume> resumes = companyDao.getResumeList();
		
		model.addAttribute("resumes", resumes);
		
		return "company/openresumelist";
	}
	
	@RequestMapping(value = "updatereadcount.action", method = RequestMethod.GET)
	public String updateReadCount(String memberId) {

		//업데이트
		companyDao.updateReadCount(memberId);
		
		return "redirect:/company/resumeview.action?memberId=" + memberId;
	}

}














