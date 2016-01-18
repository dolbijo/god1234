package com.mvcdemoweb.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mvcdemoweb.model.dao.MemberDao;
import com.mvcdemoweb.model.dto.Member;

@Service("memberService")
public class TheMemberService implements MemberService {

	@Autowired
	@Qualifier("memberDao")
	private MemberDao memberDao;
	
	@Override
	public List<Member> getAllMembers() {
		
		return memberDao.getList();
	}

	@Override
	public Member searchMemberById(String id) {
		return null;
	}

	@Override
	public Member searchMemberByIdAndPasswd(String id, String passwd) {
		return null;
	}

	@Override
	public void registerMember(Member member) {
		
	}
	
}
