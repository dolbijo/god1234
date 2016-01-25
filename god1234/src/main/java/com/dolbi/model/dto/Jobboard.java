package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Jobboard implements Serializable {


	private int J_NO;
	private String J_TITLE;
	private String J_CONTENT;
	private Date J_REGDATE;
	private int J_READCOUNT;
	private boolean J_DELETED;
	private String J_SUBTITLE;
	private Date J_DEADLINE;
	private int J_JOINNO;
	private String J_GENDER;
	private int J_AGE;
	private String J_EDUCATION;
	private String M_ID;
	private int J_PAYMENT;
	private String J_CAREER;


	//Upload 테이블과 UploadFile 테이블 사이의 1:Many 관계를 구현한 필드(변수)
	private ArrayList<UploadFile> files;
	
	public Jobboard() {}
	

	public int getJ_NO() {
		return J_NO;
	}

	public void setJ_NO(int j_NO) {
		J_NO = j_NO;
	}

	public String getJ_TITLE() {
		return J_TITLE;
	}

	public void setJ_TITLE(String j_TITLE) {
		J_TITLE = j_TITLE;
	}

	public String getJ_CONTENT() {
		return J_CONTENT;
	}

	public void setJ_CONTENT(String j_CONTENT) {
		J_CONTENT = j_CONTENT;
	}

	public Date getJ_REGDATE() {
		return J_REGDATE;
	}

	public void setJ_REGDATE(Date j_REGDATE) {
		J_REGDATE = j_REGDATE;
	}

	public int getJ_READCOUNT() {
		return J_READCOUNT;
	}

	public void setJ_READCOUNT(int j_READCOUNT) {
		J_READCOUNT = j_READCOUNT;
	}

	public boolean isJ_DELETED() {
		return J_DELETED;
	}

	public void setJ_DELETED(boolean j_DELETED) {
		J_DELETED = j_DELETED;
	}

	public String getJ_SUBTITLE() {
		return J_SUBTITLE;
	}

	public void setJ_SUBTITLE(String j_SUBTITLE) {
		J_SUBTITLE = j_SUBTITLE;
	}

	public Date getJ_DEADLINE() {
		return J_DEADLINE;
	}

	public void setJ_DEADLINE(Date j_DEADLINE) {
		J_DEADLINE = j_DEADLINE;
	}

	public int getJ_JOINNO() {
		return J_JOINNO;
	}

	public void setJ_JOINNO(int j_JOINNO) {
		J_JOINNO = j_JOINNO;
	}

	public String getJ_GENDER() {
		return J_GENDER;
	}

	public void setJ_GENDER(String j_GENDER) {
		J_GENDER = j_GENDER;
	}

	public int getJ_AGE() {
		return J_AGE;
	}

	public void setJ_AGE(int j_AGE) {
		J_AGE = j_AGE;
	}

	public String getJ_EDUCATION() {
		return J_EDUCATION;
	}

	public void setJ_EDUCATION(String j_EDUCATION) {
		J_EDUCATION = j_EDUCATION;
	}

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

	public int getJ_PAYMENT() {
		return J_PAYMENT;
	}

	public void setJ_PAYMENT(int j_PAYMENT) {
		J_PAYMENT = j_PAYMENT;
	}

	public String getJ_CAREER() {
		return J_CAREER;
	}

	public void setJ_CAREER(String j_CAREER) {
		J_CAREER = j_CAREER;
	}

	public ArrayList<UploadFile> getFiles() {
		return files;
	}

	public void setFiles(ArrayList<UploadFile> files) {
		this.files = files;
	}

	
	
	
}
