package com.dolbi.model.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.ArrayList;

public class Jobboard implements Serializable {


	private int jobboardNo;
	private String jobboardTitle;
	private String jobboardContent;
	private Date jobboardRegDate;
	private int jobboardReadCount;
	private boolean jobboardDeleted;
	private Date jobboardDeadLine;
	private int jobboardJoinNo;
	private String jobboardGender;
	private int jobboardAge;
	private String jobboardEducation;
	private String memberId;
	private String jobboardPayment;
	private int jobboardSalary;
	private String jobboardCareer;
	
	private ArrayList<JobboardAttachment> files;
	
	public Jobboard() {}

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

	public String getJobboardContent() {
		return jobboardContent;
	}

	public void setJobboardContent(String jobboardContent) {
		this.jobboardContent = jobboardContent;
	}

	public Date getJobboardRegDate() {
		return jobboardRegDate;
	}

	public void setJobboardRegDate(Date jobboardRegDate) {
		this.jobboardRegDate = jobboardRegDate;
	}

	public int getJobboardReadCount() {
		return jobboardReadCount;
	}

	public void setJobboardReadCount(int jobboardReadCount) {
		this.jobboardReadCount = jobboardReadCount;
	}

	public boolean isJobboardDeleted() {
		return jobboardDeleted;
	}

	public void setJobboardDeleted(boolean jobboardDeleted) {
		this.jobboardDeleted = jobboardDeleted;
	}

	public Date getJobboardDeadLine() {
		return jobboardDeadLine;
	}

	public void setJobboardDeadLine(Date jobboardDeadLine) {
		this.jobboardDeadLine = jobboardDeadLine;
	}

	public int getJobboardJoinNo() {
		return jobboardJoinNo;
	}

	public void setJobboardJoinNo(int jobboardJoinNo) {
		this.jobboardJoinNo = jobboardJoinNo;
	}

	public String getJobboardGender() {
		return jobboardGender;
	}

	public void setJobboardGender(String jobboardGender) {
		this.jobboardGender = jobboardGender;
	}

	public int getJobboardAge() {
		return jobboardAge;
	}

	public void setJobboardAge(int jobboardAge) {
		this.jobboardAge = jobboardAge;
	}

	public String getJobboardEducation() {
		return jobboardEducation;
	}

	public void setJobboardEducation(String jobboardEducation) {
		this.jobboardEducation = jobboardEducation;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getJobboardPayment() {
		return jobboardPayment;
	}

	public void setJobboardPayment(String jobboardPayment) {
		this.jobboardPayment = jobboardPayment;
	}

	public int getJobboardSalary() {
		return jobboardSalary;
	}

	public void setJobboardSalary(int jobboardSalary) {
		this.jobboardSalary = jobboardSalary;
	}

	public String getJobboardCareer() {
		return jobboardCareer;
	}

	public void setJobboardCareer(String jobboardCareer) {
		this.jobboardCareer = jobboardCareer;
	}

	public ArrayList<JobboardAttachment> getFiles() {
		return files;
	}

	public void setFiles(ArrayList<JobboardAttachment> files) {
		this.files = files;
	}

	
	

	
	
}
