package com.dolbi.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable {
	
	private String M_ID;
	private String M_PW;
	private String M_NAME;
	private String M_ADDRESS;
	private int M_PHONENO;
	private String M_TYPE;
	private String M_MAIL;
	private String GENDER;
	private int M_AGE;
	private int C_NO;
	private String C_HOMEPAGE;
	private int JC_NO;
	private String C_CEONAME;
	
	public String getM_ID() {
		return M_ID;
	}
	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}
	public String getM_PW() {
		return M_PW;
	}
	public void setM_PW(String m_PW) {
		M_PW = m_PW;
	}
	public String getM_NAME() {
		return M_NAME;
	}
	public void setM_NAME(String m_NAME) {
		M_NAME = m_NAME;
	}
	public String getM_ADDRESS() {
		return M_ADDRESS;
	}
	public void setM_ADDRESS(String m_ADDRESS) {
		M_ADDRESS = m_ADDRESS;
	}
	public int getM_PHONENO() {
		return M_PHONENO;
	}
	public void setM_PHONENO(int m_PHONENO) {
		M_PHONENO = m_PHONENO;
	}
	public String getM_TYPE() {
		return M_TYPE;
	}
	public void setM_TYPE(String m_TYPE) {
		M_TYPE = m_TYPE;
	}
	public String getM_MAIL() {
		return M_MAIL;
	}
	public void setM_MAIL(String m_MAIL) {
		M_MAIL = m_MAIL;
	}
	public String getGENDER() {
		return GENDER;
	}
	public void setGENDER(String gENDER) {
		GENDER = gENDER;
	}
	public int getM_AGE() {
		return M_AGE;
	}
	public void setM_AGE(int m_AGE) {
		M_AGE = m_AGE;
	}
	public int getC_NO() {
		return C_NO;
	}
	public void setC_NO(int c_NO) {
		C_NO = c_NO;
	}
	public String getC_HOMEPAGE() {
		return C_HOMEPAGE;
	}
	public void setC_HOMEPAGE(String c_HOMEPAGE) {
		C_HOMEPAGE = c_HOMEPAGE;
	}
	public int getJC_NO() {
		return JC_NO;
	}
	public void setJC_NO(int jC_NO) {
		JC_NO = jC_NO;
	}
	public String getC_CEONAME() {
		return C_CEONAME;
	}
	public void setC_CEONAME(String c_CEONAME) {
		C_CEONAME = c_CEONAME;
	}

}
