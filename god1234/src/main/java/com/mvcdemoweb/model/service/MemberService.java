package com.mvcdemoweb.model.service;

import java.util.List;

import com.mvcdemoweb.model.dto.Member;

public interface MemberService {

	List<Member> getAllMembers();

	Member searchMemberById(String id);

	Member searchMemberByIdAndPasswd(String id, String passwd);

	void registerMember(Member member);

}