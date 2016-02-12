package com.dolbi.model.dto;

import java.io.Serializable;
import java.util.Date;

public class Education implements Serializable {
	
	private int eduNo;
	private String schoolName;
	private String major;
	private Date edStartDate;
	private Date edEndDate;
	private String memberId;
	
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getEduNo() {
		return eduNo;
	}
	public void setEduNo(int eduNo) {
		this.eduNo = eduNo;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Date getEdStartDate() {
		return edStartDate;
	}
	public void setEdStartDate(Date edStartDate) {
		this.edStartDate = edStartDate;
	}
	public Date getEdEndDate() {
		return edEndDate;
	}
	public void setEdEndDate(Date edEndDate) {
		this.edEndDate = edEndDate;
	}
	
}
