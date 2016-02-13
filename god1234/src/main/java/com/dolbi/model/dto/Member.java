package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

public class Member implements Serializable {
	
	private String memberId;
	private String passWd;
	private String memberName;
	private String memberAddress;
	private int phoneNo;
	private String memberType;
	private String email;
	private String gender;
	private Date age;
	private int companyNo;
	private int categoryNo;
	private String homepage;
	private String ceoName;
	private int service;
	private int sale;
	private int office;
	private int construction;
	private int production;
	private int it;
	private int design;
	private int education;
	
	private ArrayList<Category> categorys;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPassWd() {
		return passWd;
	}
	public void setPassWd(String passWd) {
		this.passWd = passWd;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public int getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(int phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getAge() {
		return age;
	}
	public void setAge(Date age) {
		this.age = age;
	}
	public int getCompanyNo() {
		return companyNo;
	}
	public void setCompanyNo(int companyNo) {
		this.companyNo = companyNo;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getCeoName() {
		return ceoName;
	}
	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}
	public int getService() {
		return service;
	}
	public void setService(int service) {
		this.service = service;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getOffice() {
		return office;
	}
	public void setOffice(int office) {
		this.office = office;
	}
	public int getConstruction() {
		return construction;
	}
	public void setConstruction(int construction) {
		this.construction = construction;
	}
	public int getProduction() {
		return production;
	}
	public void setProduction(int production) {
		this.production = production;
	}
	public int getIt() {
		return it;
	}
	public void setIt(int it) {
		this.it = it;
	}
	public int getDesign() {
		return design;
	}
	public void setDesign(int design) {
		this.design = design;
	}
	public int getEducation() {
		return education;
	}
	public void setEducation(int education) {
		this.education = education;
	}
	public ArrayList<Category> getCategorys() {
		return categorys;
	}
	public void setCategorys(ArrayList<Category> categorys) {
		this.categorys = categorys;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
}
