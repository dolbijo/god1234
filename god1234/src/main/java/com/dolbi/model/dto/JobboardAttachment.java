package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class JobboardAttachment implements Serializable {

	private int jobboardAttachmentNo;
	private int jobboardNo;
	private String userFileName;
	private String savedFileName;
	private Date regDate;
	private int downloadCount;
	
	public JobboardAttachment() {}

	public int getJobboardAttachmentNo() {
		return jobboardAttachmentNo;
	}

	public void setJobboardAttachmentNo(int jobboardAttachmentNo) {
		this.jobboardAttachmentNo = jobboardAttachmentNo;
	}

	public int getJobboardNo() {
		return jobboardNo;
	}

	public void setJobboardNo(int jobboardNo) {
		this.jobboardNo = jobboardNo;
	}

	public String getUserFileName() {
		return userFileName;
	}

	public void setUserFileName(String userFileName) {
		this.userFileName = userFileName;
	}

	public String getSavedFileName() {
		return savedFileName;
	}

	public void setSavedFileName(String savedFileName) {
		this.savedFileName = savedFileName;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getDownloadCount() {
		return downloadCount;
	}

	public void setDownloadCount(int downloadCount) {
		this.downloadCount = downloadCount;
	}
	
	
}
