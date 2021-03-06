package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.mapper.JobboardMapper;

@Repository("jobboardDao")
public class MySqlJobboardDao implements JobboardDao {

   @Autowired
   @Qualifier("sqlSessionTemplate")
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Autowired
   @Qualifier("jobboardMapper")
   private JobboardMapper jobboardMapper;

   @Override
   public int insertJobboard(Jobboard jobboard) {
      
      
	int newJobboardNo = jobboardMapper.insertJobboard(jobboard);

	return newJobboardNo;

   }
   
   @Override
   public void insertJobboardFile(JobboardAttachment file) {
      
      //mapper연결코드
	   jobboardMapper.insertJobboardFile(file);
      
   }

   @Override
   public ArrayList<Jobboard> getJobboardList(HashMap<String, Object> map) {
      
      //mapper연결코드
	   ArrayList<Jobboard> jobboards = jobboardMapper.selectJobboards(map);
		
	   return jobboards;
   }
   
 
   
   @Override
   public Jobboard getJobboardByJobboardNo(int jobboardNo) {
   
	   Jobboard jobboard = jobboardMapper.selectJobboardByjobboardNo(jobboardNo);
      
      return jobboard;
      
      
   }
   
   public void insertApplication(String memberId, String jobboardNo) {
	   
	   HashMap<String, Object> params = new HashMap<>();
	   params.put("memberId", memberId);
	   params.put("jobboardNo", jobboardNo);
		
	   jobboardMapper.insertApplication(params);
   }
   
   public void updateCount(int jobboardNo) {
	   jobboardMapper.updateCount(jobboardNo);
   }
   
   public int getJobboardNoByMemberId(String memberId) {
	   
	   int jobboardNo = jobboardMapper.selectJobboardNoByMemberId(memberId);
	   
	   return jobboardNo;
   }
   
   public int getCount() {
	   
	   return jobboardMapper.selectCount();
	   
   }
   
   
   public Jobboard getNext(int num) {
	   
	   return jobboardMapper.selectNext(num);
	   
   }
   
   public Jobboard getPrev(int num) {
	   
	   return jobboardMapper.selectPrev(num);
   }
   
   public List<Jobboard> getsearchList(String searchTag){
	   
	   List<Jobboard> jobboards = jobboardMapper.selectJobboardBySearchTag(searchTag);
	   
	   return jobboards;
   }
   
   public void deleteJobboardAttachmentByJobboardNo(int jobboardNo) {
	   jobboardMapper.deleteJobboardAttachmentByJobboardNo(jobboardNo);
   }
   
   public void updateJobboard(Jobboard jobboard) {
	   jobboardMapper.updateJobboard(jobboard);
   }

	@Override
	public Member getCompanyByMemberId(String memberId) {
		
		Member company = jobboardMapper.selectCompanyByMemberId(memberId);
		
		return company;
	}
   
   

}

