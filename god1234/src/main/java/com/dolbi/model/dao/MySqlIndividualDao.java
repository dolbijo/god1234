package com.dolbi.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;
import com.dolbi.model.mapper.IndividualMapper;

@Repository("individualDao")
public class MySqlIndividualDao implements IndividualDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("individualMapper")
	private IndividualMapper individualMapper;

	public int getResumeById(String id) {
		
		int resume = individualMapper.selectResumeBymemberId(id);
		
		return resume;
		
	}
	
	public Member getIndividualById(String id) {
		
		System.out.println("individualDao+id" + id);
		Member member = individualMapper.selectIndividualByMemberId(id);
		System.out.println("individualDao member age : " + member.getAge());
		return member;
		
	}
	
	public void insertResume(Resume resume) {
		System.out.println("resumeDao"+resume.getResumeTitle());
		individualMapper.insertResume(resume);
	}
	public void insertResumeAttachment(ResumeAttachment resumeAttachment) {
		individualMapper.insertResumeAttachment(resumeAttachment);
	}
	public void insertCareer(Career career) {
		System.out.println("resumeDao career"+career.getCompanyName());
		individualMapper.insertCareer(career);
	}
	public void insertEducation(Education edu) {
		individualMapper.insertEducation(edu);
	}
}











