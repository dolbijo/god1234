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
import com.dolbi.model.dao.MemberDao;
import com.dolbi.model.dao.SearchjobboardDao;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;
import com.dolbi.model.service.MemberService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	
	//@Autowired
	//@Qualifier("memberDao")
	@Resource(name = "memberDao")
	private MemberDao memberDao;
	@Resource(name = "searchjobboardDao")
	
	private SearchjobboardDao searchjobboardDao;
	
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
	
//	@RequestMapping(value = "view.action", method = RequestMethod.GET)
//	public String findById(
//		@RequestParam("memberid") String memberId, @ModelAttribute("member") Member member) {
//		
//		Member member2 = memberDao.getMemberById(memberId);		
//		if (member2 != null) {
//			member.setMemberId(member2.getMemberId());
//			member.setEmail(member2.getEmail());
//			member.setUserType(member2.getUserType());
//			member.setActive(member2.isActive());
//			member.setRegDate(member2.getRegDate());
//			return "member/view";
//		} else {
//			return "redirect:/member/list.action";
//		}
//		
//	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm() {
		return "member/registerform";
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.POST)
	public String register(Member member) {
		
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));
		
		memberDao.insert(member);
		
		return "redirect:/member/list.action";
	}
	
	// ingjobboard / endjobboard
	@RequestMapping(value = "ingjobboard.action", method = RequestMethod.GET)
	public String ingJobboard(String memberId, Model model) {
		
		List<Jobboard> jobboards = searchjobboardDao.ingJobboard(memberId);
		model.addAttribute("JOBBOARDS", jobboards);
		
		return "company/jobboardlist";
	}
	@RequestMapping(value = "endjobboard.action", method = RequestMethod.GET)
	public String endJobboard(String memberId, Model model) {
		
		List<Jobboard> jobboards = searchjobboardDao.endJobboard(memberId);
		model.addAttribute("JOBBOARDS", jobboards);
		
		return "company/jobboardlist";
	}
	
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(@ModelAttribute("member") Member member) {//읽기 + view로 전달
		
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));
		
		//memberDao.update(member);//과제	
		
		return "redirect:/member/view.action?memberid=" + member.getMemberId();
	}

}














