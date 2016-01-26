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
import com.dolbi.model.dao.IndividualDao;
import com.dolbi.model.dao.JobboardDao;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.service.IndividualService;

@Controller
@RequestMapping("/jobboard")
public class JobBaordController {
	
	@Resource(name = "jobboardDao")
	private JobboardDao jobboardDao;
	
	@Autowired()
	@Qualifier("individualService")
	private IndividualService individualService;
	
	@RequestMapping(value = "list.action", method = RequestMethod.GET)
	public String list(Model model) {
		
		return "jobboard/jobboardlist";
	}
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public String findById(
		@RequestParam("memberid") String memberId, @ModelAttribute("member") Member member) {
		
		return "jobboard/jobboardview";
		
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.GET)
	public String registerForm() {
		return "jobboard/jobboardwriteform";
	}
	
	@RequestMapping(value = "register.action", method = RequestMethod.POST)
	public String register(Member member) {
		
		
		return "redirect:/member/list.action";
	}
	
	@RequestMapping(value = "edit.action", method = RequestMethod.GET)
	public String editForm(
		@RequestParam("memberid") String memberId,		
		@ModelAttribute("member") Member member) {//HttpServletRequest.setAttribute("member", member)
		
			return "jobboard/editform";
		
	}
	
	//////////////////////////////  JObboardUPloadTx
	
	@RequestMapping(value = "write.action", method = RequestMethod.POST)
	public String JobboardUploadTx(MultipartHttpServletRequest request) throws Exception {
		
		//업로드된 파일을 저장할 경로 (가상경로 -> 물리경로) 추출
		String path = 
			request.getSession().getServletContext()
			.getRealPath("/WEB-INF/uploadfiles");
		
		//Upload 객체 생성 및 파일이 아닌 데이터 저장
		Jobboard jobboard = new Jobboard();		
		jobboard.setJ_NO(Integer.parseInt(request.getParameter("J_NO")));
		jobboard.setJ_TITLE(request.getParameter("J_TITLE"));
		jobboard.setJ_READCOUNT(Integer.parseInt(request.getParameter("J_READCOUNT")));
		//jobboard.setJ_DELETED(request.getParameter("J_TITLE"));
		//jobboard.setJ_DEADLINE(Integer.parseInt(request.getParameter("J_READCOUNT")));
		jobboard.setJ_JOINNO(Integer.parseInt(request.getParameter("J_JOINNO")));
		jobboard.setJ_GENDER(request.getParameter("J_GENDER"));
		jobboard.setJ_AGE(Integer.parseInt(request.getParameter("J_AGE")));
		jobboard.setJ_EDUCATION(request.getParameter("J_EDUCATION"));
		jobboard.setM_ID(request.getParameter("M_ID"));
		jobboard.setJ_PAYMENT(Integer.parseInt(request.getParameter("J_PAYMENT")));
		jobboard.setJ_CAREER(request.getParameter("J_CAREER"));
		
		
		
		//아래 try 영역 내부에서 오류가 발생하면 모든 db연동 작업을 취소하도록 처리
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
	public String update(@ModelAttribute("member") Member member) {//읽기 + view로 전달
		
		member.setM_PW(Util.getHashedString(member.getM_PW(), "SHA-1"));
		
		//memberDao.update(member);//과제	
		
		return "redirect:/jobboard/view.action?memberid=" + member.getM_ID();
	}

}














