package com.dolbi.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
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

import com.dolbi.common.Util;
import com.dolbi.model.dao.FreeboardDao;
import com.dolbi.model.dao.IndividualDao;
import com.dolbi.model.dao.JobboardDao;
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
		
		return "freeboard/freeboardlist";
	}
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String findById(
		@RequestParam("memberid") String memberId, @ModelAttribute("member") Member member) {
		
		return "freeboard/freeboardview";
		
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
	
	/*
	//////////////////////////////  JObboardUPloadTx
	
	@RequestMapping(value = "write.action", method = RequestMethod.POST)
	public String JobboardUploadTx(MultipartHttpServletRequest request) throws Exception {
		
		//�뾽濡쒕뱶�맂 �뙆�씪�쓣 ���옣�븷 寃쎈줈 (媛��긽寃쎈줈 -> 臾쇰━寃쎈줈) 異붿텧
		String path = 
			request.getSession().getServletContext()
			.getRealPath("/WEB-INF/uploadfiles");
		
		//Upload 媛앹껜 �깮�꽦 諛� �뙆�씪�씠 �븘�땶 �뜲�씠�꽣 ���옣
		Jobboard jobboard = new Jobboard();		
		jobboard.setJobboardNo(Integer.parseInt(request.getParameter("J_NO")));
		jobboard.setJobboardTitle(request.getParameter("J_TITLE"));
		jobboard.setJobboardReadCount(Integer.parseInt(request.getParameter("J_READCOUNT")));
		//jobboard.setJ_DELETED(request.getParameter("J_TITLE"));
		//jobboard.setJ_DEADLINE(Integer.parseInt(request.getParameter("J_READCOUNT")));
		jobboard.setJobboardJoinNo(Integer.parseInt(request.getParameter("J_JOINNO")));
		jobboard.setJobboardGender(request.getParameter("J_GENDER"));
		jobboard.setJobboardAge(Integer.parseInt(request.getParameter("J_AGE")));
		jobboard.setJobboardEducation(request.getParameter("J_EDUCATION"));
		jobboard.setMemberId(request.getParameter("M_ID"));
		jobboard.setJobboardPayment(Integer.parseInt(request.getParameter("J_PAYMENT")));
		jobboard.setJobboardCareer(request.getParameter("J_CAREER"));
		
		
		
		//�븘�옒 try �쁺�뿭 �궡遺��뿉�꽌 �삤瑜섍� 諛쒖깮�븯硫� 紐⑤뱺 db�뿰�룞 �옉�뾽�쓣 痍⑥냼�븯�룄濡� 泥섎━
		try {
			int newUploadNo = jobboardDao.insertJobboard(jobboard);
			
			Iterator<String> iterator = request.getFileNames();			
			while (iterator.hasNext()) {
			
				String fileName = iterator.next();
				MultipartFile file = request.getFile(fileName);
				
				if (file != null && file.getSize() > 0) {
					
					String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
			
					JobboardAttachment temp = new JobboardAttachment();
					temp.setSavedFileName(savedName);
					temp.setUserFileName(file.getOriginalFilename());
					temp.setUploadNo(newUploadNo);
					jobboardDao.insertJobboardFile(temp);
					
					int x = 10 / 0;//force throw exception
					
					FileOutputStream ostream = new FileOutputStream(path + "/" + savedName);
					InputStream istream = file.getInputStream();
					byte[] buffer = new byte[512];
					while (true) {
						int count = istream.read(buffer, 0, buffer.length);
						if (count == -1) break;
						ostream.write(buffer, 0, count);
					}
					
					istream.close();
					ostream.close();					
				}
			}
		} catch (Exception ex) {
			//TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			throw new RuntimeException("redirect:/upload/list.action");
		}

		return "redirect:/upload/list.action";
	}
	
	@RequestMapping(value = "edit.action", method = RequestMethod.POST)
	public String update(@ModelAttribute("member") Member member) {//�씫湲� + view濡� �쟾�떖
		
		member.setPassWd(Util.getHashedString(member.getPassWd(), "SHA-1"));
		
		//memberDao.update(member);//怨쇱젣	
		
		return "redirect:/jobboard/view.action?memberid=" + member.getMemberId();
	}*/

}














