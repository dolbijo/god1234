package com.dolbi.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));

		memberDao.insertindi(member);
		
		if (member.getService() == 1) {
			
			memberDao.insertCategory(member.getMemberId(), member.getService());
			
		}
		if (member.getSale() == 2) {
			
			memberDao.insertCategory(member.getMemberId(), member.getSale());
			
		}
		if (member.getOffice() == 3) {
			
			memberDao.insertCategory(member.getMemberId(), member.getOffice());
			
		}
		if (member.getConstruction() == 4) {
			
			memberDao.insertCategory(member.getMemberId(), member.getConstruction());
			
		}
		if (member.getProduction() == 5) {
			
			memberDao.insertCategory(member.getMemberId(), member.getProduction());
			
		}
		if (member.getIt() == 6) {
			
			memberDao.insertCategory(member.getMemberId(), member.getIt());
			
		}
		if (member.getDesign() == 7) {
			
			memberDao.insertCategory(member.getMemberId(), member.getDesign());
			
		}
		if (member.getEducation() == 8) {
			
			memberDao.insertCategory(member.getMemberId(), member.getEducation());
			
		}
		
		return "redirect:/home.action";
	}
	
	@RequestMapping(value = "registercom.action", method = RequestMethod.POST)
	public String registercom(Member member) {
		
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));

		System.out.println("memberController");
		memberDao.insertcom(member);
		
		return "redirect:/home.action";
	}
	
	@RequestMapping(value = "usertype.action", method = RequestMethod.GET)
	public String usertype(Member member) {
		
		return "member/usertype";
		
	}
	
	@RequestMapping(value = "listusertype.action", method = RequestMethod.GET)
	public String listForm() {
		
		return "member/listusertype";
		
	}
	
	@RequestMapping(value = "listindi.action", method = RequestMethod.GET)
	public String listindi(Member member, Model model) {
		
		List<Member> members= memberDao.getindiMemberlist();
		model.addAttribute("members", members);
		
		return "member/listindi";
		
	}
	
	@RequestMapping(value = "listcom.action", method = RequestMethod.GET)
	public String listcom(Member member, Model model) {
		
		List<Member> members= memberDao.getcomMemberlist();
		model.addAttribute("members", members);
		
		return "member/listcom";
		
	}
	
	@RequestMapping(value = "viewindi.action", method = RequestMethod.GET)
	public String viewindi(String memberid, Model model) {
		
		Member member= memberDao.getindiMemberview(memberid);
		model.addAttribute("member", member);
		
		return "member/viewindi";
		
	}
	
	@RequestMapping(value = "viewcom.action", method = RequestMethod.GET)
	public String viewcom(String memberid, Model model) {
		
		Member member= memberDao.getcomMemberview(memberid);
		model.addAttribute("member", member);
		
		return "member/viewcom";
		
	}
	
	@RequestMapping(value = "stats.action", method = RequestMethod.GET)
	public String statsmain() {
		
	
		return "stats/stats";
		
	}
	
	
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(@ModelAttribute("member") Member member) {
		
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));
		
		//memberDao.update(member);//怨쇱젣	
		
		return "redirect:/member/view.action?memberid=" + member.getMemberId();
	}


}

