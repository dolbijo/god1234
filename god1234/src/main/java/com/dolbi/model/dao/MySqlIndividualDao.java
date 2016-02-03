package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Application;
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

	public int getcountResumeById(String id) {
		
		int resume = individualMapper.countResumeBymemberId(id);
		
		return resume;
		
	}
	
	public Resume getResumeById(String id) {
		
		Resume resume = individualMapper.selectResumeBymemberId(id);
		
		return resume;
		
	}
	public ResumeAttachment getResumeAttachmentById(String id){
		ResumeAttachment reAtt = individualMapper.selectResumeAttachmentBymemberId(id);
		
		return reAtt;
	}
	
	public ArrayList<Career> getCareerById(String id) {
		ArrayList<Career> career = individualMapper.selectCareerBymemberId(id);
		return career;
	}
	
	public ArrayList<Education> getEducationById(String id) {
		ArrayList<Education> edu = individualMapper.selectEducationBymemberId(id);
		return edu;
	}
	
	public Member getIndividualById(String id) {
		
		Member member = individualMapper.selectIndividualByMemberId(id);
		return member;
		
	}
	
	public void insertResume(Resume resume) {
		individualMapper.insertResume(resume);
	}
	public void insertResumeAttachment(ResumeAttachment resumeAttachment) {
		individualMapper.insertResumeAttachment(resumeAttachment);
	}
	public void insertCareer(Career career) {
		individualMapper.insertCareer(career);
	}
	public void insertEducation(Education edu) {
		individualMapper.insertEducation(edu);
	}
	
	public ArrayList<Application> getApplicationList(String memberId) {
		ArrayList<Application> applications = individualMapper.selectApplicationBymemberId(memberId);
		
		return applications;
	}
	
}











