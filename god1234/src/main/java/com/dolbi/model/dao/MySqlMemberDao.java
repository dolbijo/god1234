package com.dolbi.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Member;
import com.dolbi.model.mapper.MemberMapper;

@Repository("memberDao")
public class MySqlMemberDao implements MemberDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("memberMapper")
	private MemberMapper memberMapper;

	public void insert(Member member) {
		
		memberMapper.insertMember(member);

	}
	
	@Override
	public void insertindi(Member member) {
				
		memberMapper.insertindiMember(member);

	}
	
	@Override
	public void insertcom(Member member) {
				
		memberMapper.insertcomMember(member);

	}

	public List<Member> getList() {

		List<Member> members = memberMapper.selectMembers();
		
		return members;
	}

	public Member getMemberById(String id) {
		
		Member member = memberMapper.selectMemberById(id);
			
		return member;
	}

	public Member getMemberByIdAndPasswd(String id, String passWd) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("memberId", id);
		params.put("passWd", passWd);
		System.out.println("accountcontroller : 로그인post요청DAO" + passWd);
		Member member = memberMapper.selectMemberByIdAndPasswd(params);
		System.out.println("accountcontroller : 로그인post요청DAO2" + member.getMemberName());
		return member;
	}

}




