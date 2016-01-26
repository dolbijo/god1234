package com.dolbi.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.dolbi.model.dao.IndividualDao;
import com.dolbi.model.dto.Member;

@Service("jobboardService")
public class TheJobboardService implements JobboardService {

	@Autowired
	@Qualifier("individualDao")
	private IndividualDao individualDao;
	
	@Override
	public List<Member> getAllMembers() {
		
		return individualDao.getList();
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
