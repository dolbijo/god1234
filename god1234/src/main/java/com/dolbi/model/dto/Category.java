package com.dolbi.model.dto;

import java.io.Serializable;

public class Category implements Serializable {
	
	private int likedCategoryNo;
	private int categoryNo;
	private String categoryName;

	public int getLikedCategoryNo() {
		return likedCategoryNo;
	}

	public void setLikedCategoryNo(int likedCategoryNo) {
		this.likedCategoryNo = likedCategoryNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
}
