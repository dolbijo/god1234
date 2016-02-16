package com.dolbi.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Category;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;

public interface MemberMapper {
	
	List<Member> selectMembers();
	List<Member> selectMembers2();
	Member selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Member selectMemberById(String id);
	
	void insertMember(Member member);
	void insertindiMember(Member member);
	void insertcomMember(Member member);
	List<Member> selectindiMember();
	List<Member> selectcomMember();
	
	Member selectindiMemberview(String id);
	Member selectcomMemberview(String id);
	
	void insertCategory(HashMap<String, Object> params);
	
	List<Jobboard> selectGroupJobbaordsCount();
	List<Application> selectGroupApplication();
	List<Category> selectGroupCategory();

}
