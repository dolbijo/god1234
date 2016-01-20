package com.dolbi.view;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.view.AbstractView;

import com.dolbi.model.dao.UploadDao;
import com.dolbi.model.dto.UploadFile;

public class DownloadView extends AbstractView {
	
	@Override
	protected void renderMergedOutputModel(
			Map<String, Object> params,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//데이터 처리에 오류가 있는 경우 오류 메시지 응답
		if (params.get("error") != null) {
			response.setContentType("text/html;charset=euc-kr");
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>");
			out.println("alert('" + params.get("error") + "');");
			out.println("history.back();");//이전 페이지로 이동
			out.println("</script>");
			return;
		}

		//오류 없으면 파일 다운로드 처리
		UploadFile file = (UploadFile)params.get("file");		
		String path =
			request.getSession().getServletContext().getRealPath("/WEB-INF/uploadfiles");
		File file2 = new File(path, file.getSavedFileName());
		
		response.setContentType("application/octet-stream");
		
		response.addHeader("Content-Disposition", 
			"Attachment;Filename=\"" +		
				new String(file.getUserFileName().getBytes("euc-kr"), "ISO-8859-1")
				.replace("+", "%20") + 
				"\"");

		//3. 파일을 응답스트림에 기록
		BufferedInputStream istream = 
			new BufferedInputStream(new FileInputStream(file2));
		BufferedOutputStream ostream = 
			new BufferedOutputStream(response.getOutputStream());
		while (true) {
			int data = istream.read();
			if (data != -1) 
				ostream.write(data);
			else
				break;
		}
		istream.close();
		ostream.close();


	}

}
