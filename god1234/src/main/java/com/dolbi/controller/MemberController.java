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
import com.dolbi.model.dto.Member;
import com.dolbi.model.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	//@Autowired
	//@Qualifier("memberDao")
	@Resource(name = "memberDao")
	private MemberDao memberDao;
	
	@Autowired()
	@Qualifier("memberService")
	private MemberService memberService;
	
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String list(Model model) {
		
		List<Member> members = memberDao.getList();
		//List<Member> members = memberService.getAllMembers();
		model.addAttribute("members", members);//HttpServletRequest.setAttribute("members", members);
		
		return "member/list";
	}
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String findById(
		@RequestParam("memberid") String memberId, @ModelAttribute("member") Member member) {
		
		Member member2 = memberDao.getMemberById(memberId);		
		if (member2 != null) {
			member.setMemberId(member2.getMemberId());
			member.setEmail(member2.getEmail());
			member.setUserType(member2.getUserType());
			member.setActive(member2.isActive());
			member.setRegDate(member2.getRegDate());
			return "member/view";
		} else {
			return "redirect:/member/list.action";
		}
		
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm(@RequestParam(value="usertype") String usertype) {
		
		if (usertype.equals("individual")) {
			return "member/registerindi";
		} else {
			return "member/registercom";
		}
		
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.POST)
	public String register(Member member) {
		
		member.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
		
		memberDao.insert(member);
		
		return "redirect:/member/list.action";
	}
	
	@RequestMapping(value = "usertype.action", method = RequestMethod.GET)
	public String usertype(Member member) {
		
		return "member/usertype";
		
	}
	
	@RequestMapping(value = "edit.action", method = RequestMethod.GET)
	public String editForm(
		@RequestParam("memberid") String memberId,		
		@ModelAttribute("member") Member member) {//HttpServletRequest.setAttribute("member", member)
		
		Member member2 = memberDao.getMemberById(memberId);
		if (member2 == null) {
			return "redirect:/member/list.action";
		} else {
			member.setMemberId(member2.getMemberId());
			member.setEmail(member2.getEmail());
			member.setUserType(member2.getUserType());
			member.setActive(member2.isActive());
			member.setRegDate(member2.getRegDate());
			return "member/editform";
		}
		
	}
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(@ModelAttribute("member") Member member) {//읽기 + view로 전달
		
		member.setPasswd(Util.getHashedString(member.getPasswd(), "SHA-1"));
		
		//memberDao.update(member);//과제	
		
		return "redirect:/member/view.action?memberid=" + member.getMemberId();
	}

}

