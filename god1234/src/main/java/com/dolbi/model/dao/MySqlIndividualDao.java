package com.dolbi.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Member;
import com.dolbi.model.mapper.IndividualMapper;

@Repository("individualDao")
public class MySqlIndividualDao implements IndividualDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("individualMapper")
	private IndividualMapper individualMapper;

	public void insert(Member member) {
		
		individualMapper.insertMember(member);

	}

	public List<Member> getList() {
	
		List<Member> members = individualMapper.selectMembers();
		
		return members;
	}

	public Member getMemberById(String id) {
		
		Member member = individualMapper.selectMemberById(id);
			
		return member;
	}

	public Member getMemberByIdAndPasswd(String id, String passwd) {
		
		HashMap<String, Object> params = new HashMap<>();
		params.put("memberId", id);
		params.put("passwd", passwd);
			
		Member member = individualMapper.selectMemberByIdAndPasswd(params);
		
		return member;
	}

}











