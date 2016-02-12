package com.dolbi.model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.mapper.IndividualMapper;
import com.dolbi.model.mapper.JobboardMapper;
import com.dolbi.model.mapper.CompanyMapper;

@Repository("companyDao")
public class MySqlCompanyDao implements CompanyDao {

   @Autowired
   @Qualifier("sqlSessionTemplate")
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Autowired
   @Qualifier("CompanyMapper")
   private CompanyMapper companyMapper;


   @Override
   public ArrayList<Jobboard> ingJobboard(String id) {
      
      System.out.println("진행중인 공고 Dao" + id);
	   ArrayList<Jobboard> jobboard = companyMapper.selectIngJobboards(id);
	
	   return jobboard;

   }
   @Override
   public ArrayList<Jobboard> endJobboard(String id) {
      
      
	   ArrayList<Jobboard> jobboard = companyMapper.selectEndJobboards(id);
	
	return jobboard;

   }
   
   @Override
   public ArrayList<Jobboard> getJobboardList() {
      
      //mapper연결코드
	   List<Jobboard> jobboards = companyMapper.selectJobboards();
		
	   return (ArrayList<Jobboard>) jobboards;
   }
   
  
   @Override
   public Jobboard getJobboardByJobboardNo(int jobboardNo) {
   
      Jobboard jobboard = sqlSessionTemplate.selectOne(
         "com.dolbi.model.mapper.JobboardMapper.selectJobboardByJobboardNo2", jobboardNo);
      
      return jobboard;
      
      
   }
   
   @Override
   public ArrayList<Application> applicationList(int jobboardNo) {
	   
	   ArrayList<Application> applications = companyMapper.selectApplication(jobboardNo);
	   
	   return applications;
	   
   }

   @Override
   public void updateApplication(int applicationNo) {
	   companyMapper.updateApplication(applicationNo);
   }
   
   public Resume getResumeById(String id) {
		
		Resume resume = companyMapper.selectResumeBymemberId(id);
		
		return resume;
		
	}
	public ResumeAttachment getResumeAttachmentById(String id){
		ResumeAttachment reAtt = companyMapper.selectResumeAttachmentBymemberId(id);
		
		return reAtt;
	}
	
	public ArrayList<Career> getCareerById(String id) {
		ArrayList<Career> career = companyMapper.selectCareerBymemberId(id);
		return career;
	}
	
	public ArrayList<Education> getEducationById(String id) {
		ArrayList<Education> edu = companyMapper.selectEducationBymemberId(id);
		return edu;
	}
	
	public Member getIndividualById(String id) {
		
		Member member = companyMapper.selectIndividualByMemberId(id);
		return member;
		
	}

}

