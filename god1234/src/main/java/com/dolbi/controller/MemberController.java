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
	
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm(@RequestParam(value="usertype") String usertype) {
		
		if (usertype.equals("individual")) {
			return "member/registerindi";
		} else {
			return "member/registercom";
		}
		
	}
	
	
	@RequestMapping(value = "registerindi.action", method = RequestMethod.POST)
	public String registerindi(Member member) {
		
<<<<<<< HEAD
		member.setM_PW(Util.getHashedString(member.getM_PW(), "SHA-1"));
		System.out.println("controller:registerindi +" + member.getM_NAME());
=======
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));
		System.out.println("controller:registerindi");
>>>>>>> branch 'master' of https://github.com/dolbijo/god1234.git
		memberDao.insertindi(member);
		
		return "redirect:/home.action";
	}
	
	@RequestMapping(value = "usertype.action", method = RequestMethod.GET)
	public String usertype(Member member) {
		
		return "member/usertype";
		
	}
	
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(@ModelAttribute("member") Member member) {//읽기 + view로 전달
		
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));
		
		//memberDao.update(member);//과제	
		
		return "redirect:/member/view.action?memberid=" + member.getMemberId();
	}

}

