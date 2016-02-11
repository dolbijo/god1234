package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Freeboard implements Serializable {


	private int freeboardNo;
	private String freeboardTitle;
	private String freeboardContent;
	private Date freeboardRegDate;
	private int freeboardReadCount;
	private boolean freeboardDeleted;
	private String freeboardtype;
	private String memberId;
	
	private ArrayList<FreeboardComment> comments;
	
	public Freeboard() {}
	
	public int getFreeboardNo() {
		return freeboardNo;
	}
	public void setFreeboardNo(int freeboardNo) {
		this.freeboardNo = freeboardNo;
	}
	public String getFreeboardTitle() {
		return freeboardTitle;
	}
	public void setFreeboardTitle(String freeboardTitle) {
		this.freeboardTitle = freeboardTitle;
	}
	public String getFreeboardContent() {
		return freeboardContent;
	}
	public void setFreeboardContent(String freeboardContent) {
		this.freeboardContent = freeboardContent;
	}
	public Date getFreeboardRegDate() {
		return freeboardRegDate;
	}
	public void setFreeboardRegDate(Date freeboardRegDate) {
		this.freeboardRegDate = freeboardRegDate;
	}
	public int getFreeboardReadCount() {
		return freeboardReadCount;
	}
	public void setFreeboardReadCount(int freeboardReadCount) {
		this.freeboardReadCount = freeboardReadCount;
	}
	public boolean isFreeboardDeleted() {
		return freeboardDeleted;
	}
	public void setFreeboardDeleted(boolean freeboardDeleted) {
		this.freeboardDeleted = freeboardDeleted;
	}
	public String getFreeboardtype() {
		return freeboardtype;
	}
	public void setFreeboardtype(String freeboardtype) {
		this.freeboardtype = freeboardtype;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public ArrayList<FreeboardComment> getComments() {
		return comments;
	}

	public void setComments(ArrayList<FreeboardComment> comments) {
		this.comments = comments;
	}
	

	
}
