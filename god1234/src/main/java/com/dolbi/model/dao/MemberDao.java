package com.dolbi.model.dao;

import java.util.List;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Category;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;

public interface MemberDao {

	void insert(Member member);
	
	void insertindi(Member member);
	
	void insertcom(Member member);
	
	List<Member> getcomMemberlist();
	
	List<Member> getindiMemberlist();
	
	List<Member> getList();

	Member getMemberById(String id);

	Member getMemberByIdAndPasswd(String id, String passWd);

	Member getindiMemberview(String id);

	Member getcomMemberview(String id);
	
	void insertCategory(String id, int categoryNo);

	List<Jobboard> getGroupJobbaordsCount();

	List<Application> getGroupApplication();

	List<Category> getGroupCategory();
	

}