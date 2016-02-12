package com.dolbi.model.dto;

import java.io.Serializable;

public class ResumeAttachment implements Serializable {

	private String memberId;
	private String resumeSavedFilename;
	private String resumeFilename;
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getResumeSavedFilename() {
		return resumeSavedFilename;
	}
	public void setResumeSavedFilename(String resumeSavedFilename) {
		this.resumeSavedFilename = resumeSavedFilename;
	}
	public String getResumeFilename() {
		return resumeFilename;
	}
	public void setResumeFilename(String resumeFilename) {
		this.resumeFilename = resumeFilename;
	}
	
	
}
