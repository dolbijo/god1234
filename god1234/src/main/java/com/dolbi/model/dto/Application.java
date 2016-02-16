package com.dolbi.model.dto;

import java.io.Serializable;
import java.util.Date;

public class Application implements Serializable {
	
	private int applicationNo;
	private int jobboardNo;
	private String jobboardTitle;
	private String memberId;
	private boolean isCheck;
	private Date applicationRegdate;
	
	
	
	private int groupDateCount;

	public int getGroupDateCount() {
		return groupDateCount;
	}
	public void setGroupDateCount(int groupDateCount) {
		this.groupDateCount = groupDateCount;
	}
	public void setCheck(boolean isCheck) {
		this.isCheck = isCheck;
	}
	public int getApplicationNo() {
		return applicationNo;
	}
	public void setApplicationNo(int applicationNo) {
		this.applicationNo = applicationNo;
	}
	public int getJobboardNo() {
		return jobboardNo;
	}
	public void setJobboardNo(int jobboardNo) {
		this.jobboardNo = jobboardNo;
	}
	public String getJobboardTitle() {
		return jobboardTitle;
	}
	public void setJobboardTitle(String jobboardTitle) {
		this.jobboardTitle = jobboardTitle;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	public Date getApplicationRegdate() {
		return applicationRegdate;
	}
	public void setApplicationRegdate(Date applicationRegdate) {
		this.applicationRegdate = applicationRegdate;
	}
	
	public boolean getIsCheck() {
		return isCheck;
	}
	public void setIsCheck(boolean isCheck) {
		this.isCheck = isCheck;
	}
	
}
