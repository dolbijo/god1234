package com.dolbi.controller;

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

import com.dolbi.common.Util;
import com.dolbi.model.dao.CompanyDao;
import com.dolbi.model.dao.MemberDao;
import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;
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
	
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String jobboardlist(String memberId) {
		
		return "company/jobboardlist";
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

}














