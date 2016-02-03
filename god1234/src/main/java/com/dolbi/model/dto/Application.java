package com.dolbi.model.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.ArrayList;

public class Application implements Serializable {
	
	private int applicationNo;
	private int jobboardNo;
	private String memberId;
	private boolean isCheck;
	private Date applicationRegdate;
	
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
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public boolean isCheck() {
		return isCheck;
	}
	public void setCheck(boolean isCheck) {
		this.isCheck = isCheck;
	}
	public Date getApplicationRegdate() {
		return applicationRegdate;
	}
	public void setApplicationRegdate(Date applicationRegdate) {
		this.applicationRegdate = applicationRegdate;
	}
	
}
