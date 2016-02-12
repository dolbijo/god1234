package com.dolbi.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dolbi.model.dao.HomeDao;
import com.dolbi.model.dao.JobboardDao;
import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Resource(name = "homeDao")
	private HomeDao homeDao;

	@RequestMapping(value = { "/", "/home.action" }, method = RequestMethod.GET)
	public String home(Model model) {
		
		//1. 최신 채용정보 10개 가져오기
		List<Jobboard> newjobboards = homeDao.getNewJobboardList();
		
		//2. 조회수 높은 채용정보 10개 가져오기
		List<Jobboard> popjobboards = homeDao.getPopJobboardList();
		
		//3. albainfo : 알바 지식인 10개
		List<Freeboard> albainfofreeboards = homeDao.getAlbaInfoFreeboardList();
		
		//4. albawarning : 이런알바 조심 10개
		List<Freeboard> albawarningfreeboards = homeDao.getAlbaWarningFreeboardList();
		
		//5. albaexp : 알바경험담 10개
		List<Freeboard> albaexpfreeboards = homeDao.getAlbaExpFreeboardList();
		
		//3. 4. 5. 번은 텝을 사용해서 구분해주기 기본은 지식인
		//목록 모델에 저장
		model.addAttribute("newjobboards", newjobboards);
		model.addAttribute("popjobboards", popjobboards);
		model.addAttribute("albainfofreeboards", albainfofreeboards);
		model.addAttribute("albawarningfreeboards", albawarningfreeboards);
		model.addAttribute("albaexpfreeboards", albaexpfreeboards);

		return "index"; // /WEB-INF/views/ + index + .jsp
	}
	
}
