package com.dolbi.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dolbi.common.Util;
import com.dolbi.model.dao.FreeboardDao;
import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Member;

@Controller
@RequestMapping("/freeboard")
public class FreeboardController {
	
	@Resource(name = "freeboardDao")
	private FreeboardDao freeboardDao;
	
	
	
	  @RequestMapping(value = "list.action", method = RequestMethod.GET)
	   public String list(String freeboardtype, Model model) {
	      
			List<Freeboard> freeboards = freeboardDao.getFreeboardList(freeboardtype);
			model.addAttribute("freeboards", freeboards);
			
			return "freeboard/freeboardlist";
	   }
	  
	   @RequestMapping(value = "write.action", method = RequestMethod.POST)
		public String getFreeboardWriteForm(Freeboard freeboard) throws Exception {
		   freeboardDao.insertFreeboard(freeboard);

			return "redirect:/freeboard/list.action";
		}
		
	   @RequestMapping(value = "updatecount.action", method = RequestMethod.GET)
		public String updatecount(@RequestParam(value="FreeboardNo") int freeboardNo) {
			
			freeboardDao.updateCount(freeboardNo);

			return "redirect:/freeboard/view.action?FreeboardNo="+freeboardNo;
		}
	  
	   @RequestMapping(value = "view.action", method = RequestMethod.GET)
		public ModelAndView getFreeboard(
				@RequestParam(value="FreeboardNo") int freeboardNo) {
			ModelAndView mav = new ModelAndView();
			
			Freeboard freeboard = freeboardDao.getFreeboardByFreeboardNo(freeboardNo);
			mav.addObject(freeboard);
			
			mav.setViewName("freeboard/freeboardview");
			return mav;
		}
	
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm() {
		return "freeboard/freeboardwriteform";
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.POST)
	   public String register(Member member) {
	    
	      
	      return "redirect:/freeboard/list.action";
	   }
	   
	
	//edit
	  @RequestMapping(value = "edit.action", method = RequestMethod.GET)
	   public String editForm(   
	      @RequestParam("freeboardno") int freeboardNo,      
	      @ModelAttribute("freeboard") Freeboard freeboard, Model model) {
		   System.out.println(freeboardNo);
	     Freeboard freeboard1 = freeboardDao.getFreeboardByFreeboardNo(freeboardNo);
	
	     model.addAttribute("freeboard1",freeboard1);
	         return "freeboard/freeboardeditform";
	      
	   }
	   
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(@ModelAttribute("freeboard") Freeboard freeboard) {//읽기 + view로 전달
		//System.out.println(jobboard.getJobboardAge());
		freeboard.setMemberId(Util.getHashedString(freeboard.getMemberId(), "SHA-1"));
		
		return "redirect:/freeboard/view.action?memberid=" + freeboard.getMemberId();
	}
	
	@RequestMapping(value = "writecomment.action", method = RequestMethod.POST)
	public String writecomment(int freeboardNo, String content, String memberId) {
		
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("freeboardNo", freeboardNo);
		map.put("content", content);
		map.put("memberId", memberId);
		
		freeboardDao.insertComment(map);
		
		return "redirect:/freeboard/view.action?FreeboardNo="+freeboardNo;
		
	}
	
	
	@RequestMapping(value = "updatecomment.action", method = RequestMethod.POST)
	public String updateComment(int freeboardNo, String content, int commentNo) {
		
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("freeboardNo", freeboardNo);
		map.put("content", content);
		map.put("commentNo", commentNo);
		
		freeboardDao.updateComment(map);
		
		return "redirect:/freeboard/view.action?FreeboardNo="+freeboardNo;
		
	}
	
	@RequestMapping(value = "deletecomment.action", method = RequestMethod.GET)
	public String deleteComment(int freeboardNo, int commentNo) {
		
		freeboardDao.deleteComment(commentNo);
		
		return "redirect:/freeboard/view.action?FreeboardNo="+freeboardNo;
		
	}

}














