package com.dolbi.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dolbi.common.Util;
import com.dolbi.model.dao.UploadDao;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.view.DownloadView;

@Controller
@RequestMapping("/upload")
public class UploadController {
	
	@Autowired
	@Qualifier("uploadDao")
	UploadDao dao;
	
	@Autowired
	@Qualifier("txTemplate")
	private TransactionTemplate txTemplate;
	

	@RequestMapping(value = "list.action", method=RequestMethod.GET)
	public ModelAndView getUploadList(HttpServletRequest request) {
		
		//로그인 체크 -> 로그인 되지 않은 사용자는 로그인 서블릿으로 이동
		HttpSession session = request.getSession(true);
		if (session.getAttribute("loginuser") == null) {
			ModelAndView mav = new ModelAndView();
			mav.setViewName(
			"redirect:/loginform.action?returnurl=" + request.getRequestURI());
			return mav;
		}
		
		List<Upload> uploads = dao.getUploadList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("uploads", uploads);
		mav.setViewName("upload/uploadlist");
		
		return mav;
	}
	@RequestMapping(value = "write.action", method = RequestMethod.GET)
	public String getUploadWriteForm() {
		return "upload/uploadwriteform";
	}
	
//	@RequestMapping(value = "write.action", method = RequestMethod.POST)
//	public String registerUploadTx(MultipartHttpServletRequest request) throws Exception {
//		
//		//업로드된 파일을 저장할 경로 (가상경로 -> 물리경로) 추출
//		String path = 
//			request.getSession().getServletContext()
//			.getRealPath("/WEB-INF/uploadfiles");
//		
//		//Upload 객체 생성 및 파일이 아닌 데이터 저장
//		Upload upload = new Upload();		
//		upload.setTitle(request.getParameter("title"));
//		upload.setUploader(request.getParameter("uploader"));
//		upload.setContent(request.getParameter("content"));
//		
//		PlatformTransactionManager txManager = txTemplate.getTransactionManager();
//		TransactionStatus txStatus = 
//			txManager.getTransaction(new DefaultTransactionDefinition());
//		
//		try {
//			int newUploadNo = dao.insertUpload(upload);
//			
//			Iterator<String> iterator = request.getFileNames();			
//			while (iterator.hasNext()) {
//			
//				String fileName = iterator.next();
//				MultipartFile file = request.getFile(fileName);
//				
//				if (file != null && file.getSize() > 0) {
//					
//					String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
//			
//					UploadFile temp = new UploadFile();
//					temp.setSavedFileName(savedName);
//					temp.setUserFileName(file.getOriginalFilename());
//					temp.setUploadNo(newUploadNo);
//					dao.insertUploadFile(temp);
//					
//					//int x = 10 / 0;//force throw exception
//					
//					FileOutputStream ostream = new FileOutputStream(path + "/" + savedName);
//					InputStream istream = file.getInputStream();
//					byte[] buffer = new byte[512];
//					while (true) {
//						int count = istream.read(buffer, 0, buffer.length);
//						if (count == -1) break;
//						ostream.write(buffer, 0, count);
//					}
//					
//					istream.close();
//					ostream.close();					
//				}
//			}
//			txManager.commit(txStatus);
//		} catch (Exception ex) {
//			txManager.rollback(txStatus);
//		}
//
//		return "redirect:/upload/list.action";
//	}
	
	@RequestMapping(value = "write.action", method = RequestMethod.POST)
	public String registerUploadTx(MultipartHttpServletRequest request) throws Exception {
		
		//업로드된 파일을 저장할 경로 (가상경로 -> 물리경로) 추출
		String path = 
			request.getSession().getServletContext()
			.getRealPath("/WEB-INF/uploadfiles");
		
		//Upload 객체 생성 및 파일이 아닌 데이터 저장
		Upload upload = new Upload();		
		upload.setTitle(request.getParameter("title"));
		upload.setUploader(request.getParameter("uploader"));
		upload.setContent(request.getParameter("content"));
		
		//아래 try 영역 내부에서 오류가 발생하면 모든 db연동 작업을 취소하도록 처리
		try {
			int newUploadNo = dao.insertUpload(upload);
			
			Iterator<String> iterator = request.getFileNames();			
			while (iterator.hasNext()) {
			
				String fileName = iterator.next();
				MultipartFile file = request.getFile(fileName);
				
				if (file != null && file.getSize() > 0) {
					
					String savedName = Util.getUniqueFileName(path, file.getOriginalFilename());
			
					UploadFile temp = new UploadFile();
					temp.setSavedFileName(savedName);
					temp.setUserFileName(file.getOriginalFilename());
					temp.setUploadNo(newUploadNo);
					dao.insertUploadFile(temp);
					
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
	
	@RequestMapping(value = "view.action", method = RequestMethod.GET)
	public ModelAndView getUpload(
			@RequestParam(value="uploadno") int uploadNo) {
		ModelAndView mav = new ModelAndView();
		Upload upload = dao.getUploadByUploadNo(uploadNo);
		mav.addObject(upload);
		mav.setViewName("upload/uploadview");
		return mav;
	}
	
	@RequestMapping(value = "download.action", method = RequestMethod.GET)
	public ModelAndView download(HttpServletRequest request) {
		
		String errorMessage = null;
		UploadFile file = null;
		
		//다운로드할 파일 번호의 전달 여부 확인 (없으면 실패)
		if (request.getParameter("uploadfileno") == null ||
				request.getParameter("uploadfileno").length() == 0) {
				errorMessage = "다운로드 실패";
		}

		//파일 번호가 있는 경우 (오류가 없는 경우)
		if (errorMessage == null) {
			
			int uploadFileNo = 
				Integer.parseInt(request.getParameter("uploadfileno"));
			//다운로드할 파일 정보를 DB에서 조회
			file = dao.getUploadFileByUploadFileNo(uploadFileNo);
			
			//조회 실패한 경우 (없으면 실패)
			if (file == null) {				
				errorMessage = "다운로드 실패";
			}
			//조회에 성공한 경우 (오류 없는 경우)
			if (errorMessage == null) {
				//다운로드할 파일 경로 구성 
				String path =
					request.getSession().getServletContext().getRealPath("/WEB-INF/uploadfiles");
				File file2 = new File(path, file.getSavedFileName());
				
				//만약 파일이 존재하지 않는 다면 오류 처리
				if (!file2.exists()) {
					errorMessage = "다운로드 실패";
				} else {
					dao.increaseUploadFileDownloadCount(uploadFileNo);
				}
			}
		}
		
		//처리된 데이터를 다운로드 뷰에 전달
		ModelAndView mav = new ModelAndView();
		mav.addObject("error", errorMessage);
		mav.addObject("file", file);
		mav.setView(new DownloadView());
		
		return mav;
	}
	
}
