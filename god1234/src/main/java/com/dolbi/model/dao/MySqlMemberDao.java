package com.dolbi.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Category;
import com.dolbi.model.dto.Jobboard;
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
		System.out.println("insertindiDAO");
		memberMapper.insertindiMember(member);

	}
	
	@Override
	public void insertcom(Member member) {
		System.out.println("insertcomDAO");
		memberMapper.insertcomMember(member);

	}
	
	@Override
	public List<Member> getindiMemberlist() {
		List<Member> members= memberMapper.selectindiMember();
		
		return members;

	}
	
	@Override
	public List<Member> getcomMemberlist() {
		List<Member> members= memberMapper.selectcomMember();

		return members;
	}
	
	@Override
	public Member getindiMemberview(String id) {
		Member member= memberMapper.selectindiMemberview(id);

		return member;
	}
	
	@Override
	public Member getcomMemberview(String id) {
		Member member= memberMapper.selectcomMemberview(id);

		return member;
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
		
		Member member = memberMapper.selectMemberByIdAndPasswd(params);
		
		return member;
	}
	
	public void insertCategory(String id, int categoryNo){
		HashMap<String, Object> params = new HashMap<>();
		
		params.put("id", id);
		params.put("categoryNo", categoryNo);
		
		memberMapper.insertCategory(params);
	}

	@Override
	public List<Jobboard> getGroupJobbaordsCount() {
		

		List<Jobboard> groupJobbaordsCount= memberMapper.selectGroupJobbaordsCount();

		return groupJobbaordsCount;
	}

	@Override
	public List<Application> getGroupApplication() {
		
		List<Application> groupApplication= memberMapper.selectGroupApplication();
		
		return groupApplication;
	}

	@Override
	public List<Category> getGroupCategory() {
		
		List<Category> groupCategory= memberMapper.selectGroupCategory();
		
		return groupCategory;
	}
	
}




