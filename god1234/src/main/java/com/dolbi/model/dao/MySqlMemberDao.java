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
		
//		sqlSessionTemplate.insert(
//			"com.mvcdemoweb.model.mapper.MemberMapper.insertMember", member);
		memberMapper.insertMember(member);

	}

	public List<Member> getList() {

//		List<Member> members = sqlSessionTemplate.selectList(
//			"com.mvcdemoweb.model.mapper.MemberMapper.selectMembers");
		
//		List<Member> members = sqlSessionTemplate.selectList(
//			"com.mvcdemoweb.model.mapper.MemberMapper.selectMembers2");
		
		List<Member> members = memberMapper.selectMembers();
		
		return members;
	}

	public Member getMemberById(String id) {
		
//		Member member = sqlSessionTemplate.selectOne(
//			"com.mvcdemoweb.model.mapper.MemberMapper.selectMemberById", id);
		
		Member member = memberMapper.selectMemberById(id);
			
		return member;
	}

	public Member getMemberByIdAndPasswd(String id, String passwd) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("memberId", id);
		params.put("passwd", passwd);
		
//		Member member = sqlSessionTemplate.selectOne(
//			"com.mvcdemoweb.model.mapper.MemberMapper.selectMemberByIdAndPasswd", params);
		
		Member member = memberMapper.selectMemberByIdAndPasswd(params);
		
		return member;
	}

}











