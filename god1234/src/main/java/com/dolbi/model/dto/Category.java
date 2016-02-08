package com.dolbi.model.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.ArrayList;

public class Category implements Serializable {
	
	private int service;
	private int sale;
	private int office;
	private int construction;
	private int production;
	private int it;
	private int design;
	private int education;
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
	
	
	
}
