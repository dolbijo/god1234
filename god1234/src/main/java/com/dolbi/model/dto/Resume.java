package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Resume implements Serializable {

	private String memberId;
	private String resumeTitle;
	private String selfintroduction;
	private boolean ispublic;
	private int readcount;
	private Date lastmodified;
	
	private ResumeAttachment resumeFiles;
	private ArrayList<Career> arrCareer;
	private ArrayList<Education> arrEdu;
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getResumeTitle() {
		return resumeTitle;
	}
	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}
	public String getSelfintroduction() {
		return selfintroduction;
	}
	public void setSelfintroduction(String selfintroduction) {
		this.selfintroduction = selfintroduction;
	}
	public boolean isIspublic() {
		return ispublic;
	}
	public void setIspublic(boolean ispublic) {
		this.ispublic = ispublic;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Date getLastmodified() {
		return lastmodified;
	}
	public void setLastmodified(Date lastmodified) {
		this.lastmodified = lastmodified;
	}
	public ResumeAttachment getResumeFiles() {
		return resumeFiles;
	}
	public void setResumeFiles(ResumeAttachment resumeFiles) {
		this.resumeFiles = resumeFiles;
	}
	public ArrayList<Career> getArrCareer() {
		return arrCareer;
	}
	public void setArrCareer(ArrayList<Career> arrCareer) {
		this.arrCareer = arrCareer;
	}
	public ArrayList<Education> getArrEdu() {
		return arrEdu;
	}
	public void setArrEdu(ArrayList<Education> arrEdu) {
		this.arrEdu = arrEdu;
	}
	
}
