package com.dolbi.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dolbi.common.Util;
import com.dolbi.model.dao.FreeboardDao;
import com.dolbi.model.dao.IndividualDao;
import com.dolbi.model.dao.JobboardDao;
import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.service.IndividualService;

@Controller
@RequestMapping("/freeboard")
public class FreeboardController {
	
	@Resource(name = "freeboardDao")
	private FreeboardDao freeboardDao;
	
	
	
	  @RequestMapping(value = "list.action", method = RequestMethod.GET)
	   public String list(Model model) {
	      
			//List<Upload> uploads = dao.getUploadList();
			List<Freeboard> freeboards = freeboardDao.getFreeboardList();
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
	   
	
	@RequestMapping(value = "edit.action", method = RequestMethod.GET)
	public String editForm(
		@RequestParam("memberid") String memberId,		
		@ModelAttribute("member") Member member) {//HttpServletRequest.setAttribute("member", member)
		
			return "freeboard/editform";
		
	}
	


}














