package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Upload implements Serializable {


	private int uploadNo;
	private String title;
	private String uploader;
	private String content;
	private boolean deleted;
	private Date regDate;

	//Upload 테이블과 UploadFile 테이블 사이의 1:Many 관계를 구현한 필드(변수)
	private ArrayList<UploadFile> files;
	
	public Upload() {}
	
	public int getUploadNo() {
		return uploadNo;
	}
	public void setUploadNo(int uploadNo) {
		this.uploadNo = uploadNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUploader() {
		return uploader;
	}
	public void setUploader(String uploader) {
		this.uploader = uploader;
	}	
	public boolean isDeleted() {
		return deleted;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}	
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public ArrayList<UploadFile> getFiles() {
		return files;
	}
	public void setFiles(ArrayList<UploadFile> files) {
		this.files = files;
	}
	
}
