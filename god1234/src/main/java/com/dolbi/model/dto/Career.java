package com.dolbi.model.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.ArrayList;

public class Career implements Serializable {
	
	private int careerNo;
	private String companyName;
	private String companyType;
	private Date caStartDate;
	private Date caEndDate;
	private String memberId;
	
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getCareerNo() {
		return careerNo;
	}
	public void setCareerNo(int careerNo) {
		this.careerNo = careerNo;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyType() {
		return companyType;
	}
	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}
	public Date getCaStartDate() {
		return caStartDate;
	}
	public void setCaStartDate(Date startDate) {
		this.caStartDate = startDate;
	}
	public Date getCaEndDate() {
		return caEndDate;
	}
	public void setCaEndDate(Date endDate) {
		this.caEndDate = endDate;
	}
	
	
	
}
