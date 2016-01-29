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
@RequestMapping("/individual")
public class IndividualController {
	
	//@Autowired
	//@Qualifier("memberDao")
	@Resource(name = "individualDao")
	private IndividualDao individualDao;
	
	/*@RequestMapping(value = "individualmain.action", method = RequestMethod.GET)
	public String individualmain(@RequestParam("memberid") String memberId) {
		
		int individualDao.getResumeById(memberId);
		
		return "individual/individualmain";
	}*/
	
	@RequestMapping(value = "resumeview.action", method = RequestMethod.GET)
	public String resumeview(@RequestParam("memberid") String memberId) {
		
		return "individual/resumeview";
		
	}
	
	
	@RequestMapping(value = "applicationlist.action", method = RequestMethod.GET)
	public String applicationlist(@RequestParam("memberid") String memberId) {
		
		return "individual/applicationlist";
		
	}
	
	@RequestMapping(value = "recommendationlist.action", method = RequestMethod.GET)
	public String recommendationlist() {
		return "individual/recommendationlist";
	}

}














