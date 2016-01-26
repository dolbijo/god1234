package com.dolbi.model.service;

import java.util.List;

import com.dolbi.model.dto.Member;

public interface JobboardService {

	List<Member> getAllMembers();

	Member searchMemberById(String id);

	Member searchMemberByIdAndPasswd(String id, String passwd);

	void registerMember(Member member);

}