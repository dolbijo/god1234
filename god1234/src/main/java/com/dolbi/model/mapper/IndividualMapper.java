package com.dolbi.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Member;

public interface IndividualMapper {
	
	List<Member> selectMembers();
	List<Member> selectMembers2();
	Member selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Member selectMemberById(String id);
	
	void insertMember(Member member);

}
