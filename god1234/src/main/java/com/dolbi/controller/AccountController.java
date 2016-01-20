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
import com.dolbi.model.dao.MySqlMemberDao;
import com.dolbi.model.dto.Member;

@Controller
@RequestMapping("/account")
public class AccountController {
	
	@Autowired
	@Qualifier("memberDao")
	private MemberDao memberDao; 

	@RequestMapping(value = "login.action", method = RequestMethod.GET)
	public String loginForm() {
		
		return "account/loginform"; // /WEB-INF/views/ + account/loginform + .jsp
	}	
	
	@RequestMapping(value = "login.action", method = RequestMethod.POST)
	public String login(
		HttpSession session, HttpServletRequest req,
		String memberId, String passwd, @RequestParam("returnurl") String returnUrl) {
		
		passwd = Util.getHashedString(passwd, "SHA-1");
		
		//요청 데이터 (아이디, 열쇠글)으로 데이터베이스에서 조회
		//MySqlMemberDao memberDao = new MySqlMemberDao();
		Member member = memberDao.getMemberByIdAndPasswd(memberId, passwd);
		
		//조회 결과에 따라 이동 처리
		if (member != null) {
			session.setAttribute("loginuser", member);//로그인 처리
			if (returnUrl != null && returnUrl.length() > 0) {
				//spring mvc에서 redirect 경로는 application이름을 포함할 수 없습니다.
				return "redirect:" + returnUrl.replace("/spring-mvc-demoweb5", "");
			} else {
				return "redirect:/home.action";
			}
		} else {
			//request객체에 데이터 저장
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





