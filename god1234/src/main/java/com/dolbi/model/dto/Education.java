package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Education implements Serializable {

	private String schoolName;
	private String major;
	private Date edStartDate;
	private Date edEndDate;
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
