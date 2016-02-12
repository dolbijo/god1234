package com.dolbi.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dolbi.common.Util;
import com.dolbi.model.dao.MemberDao;
import com.dolbi.model.dto.Member;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	@Qualifier("memberDao")
	private MemberDao memberDao; 

	@RequestMapping(value = "login.action", method = RequestMethod.GET)
	public String loginForm() {
		
		return "account/loginform";
	}	
	
	@RequestMapping(value = "login.action", method = RequestMethod.POST)
	public String login(
		HttpSession session, HttpServletRequest req,
		String memberId, String passWd, @RequestParam("returnurl") String returnUrl) {
		
		passWd = Util.getHashedString(passWd, "SHA-1");
		
		Member member = memberDao.getMemberByIdAndPasswd(memberId, passWd);
		
		if (member != null) {
			session.setAttribute("loginuser", member);
			if (returnUrl != null && returnUrl.length() > 0) {
				return "redirect:" + returnUrl.replace("/dolbi", "");
			} else {
				return "redirect:/home.action";
			}
		} else {
			req.setAttribute("loginid", memberId);
			return "account/loginform"; 
		}
		
	}	
	
	@RequestMapping(value = "logout.action", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		session.removeAttribute("loginuser");
		
		return "redirect:/account/login.action";
	}
	
}





