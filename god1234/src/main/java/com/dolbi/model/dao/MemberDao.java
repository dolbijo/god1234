package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.dolbi.model.dto.Member;

public interface MemberDao {

	void insert(Member member);
	
	void insertindi(Member member);
	
	void insertcom(Member member);
	
	void getcomMemberlist();
	
	void getindiMemberlist();

	List<Member> getList();

	Member getMemberById(String id);

	Member getMemberByIdAndPasswd(String id, String passWd);

}