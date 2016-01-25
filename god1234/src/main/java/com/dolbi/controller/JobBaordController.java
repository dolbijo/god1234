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
import com.dolbi.model.dao.IndividualDao;
import com.dolbi.model.dto.Member;
import com.dolbi.model.service.IndividualService;

@Controller
@RequestMapping("/jobboard")
public class JobBaordController {
	
	@Resource(name = "individualDao")
	private IndividualDao individualDao;
	
	@Autowired()
	@Qualifier("individualService")
	private IndividualService individualService;
	
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String list(Model model) {
		
		return "jobboard/jobboardlist";
	}
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String findById(
		@RequestParam("memberid") String memberId, @ModelAttribute("member") Member member) {
		
		return "jobboard/jobboardview";
		
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm() {
		return "jobboard/jobboardwriteform";
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.POST)
	public String register(Member member) {
		
		
		return "redirect:/member/list.action";
	}
	
	@RequestMapping(value = "edit.action", method = RequestMethod.GET)
	public String editForm(
		@RequestParam("memberid") String memberId,		
		@ModelAttribute("member") Member member) {//HttpServletRequest.setAttribute("member", member)
		
			return "member/editform";
		
	}
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(@ModelAttribute("member") Member member) {//읽기 + view로 전달
		
		member.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
		
		//memberDao.update(member);//과제	
		
		return "redirect:/member/view.action?memberid=" + member.getMemberId();
	}

}














