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

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.mapper.IndividualMapper;
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
	System.out.println("Daoinsertjobboard:" + newJobboardNo +"/"+ jobboard.getJobboardNo());
	 
	
	return newJobboardNo;

   }
   
   @Override
   public void insertJobboardFile(JobboardAttachment file) {
      
      //mapper연결코드
	   jobboardMapper.insertJobboardFile(file);
      
   }

   @Override
   public ArrayList<Jobboard> getJobboardList() {
      
      //mapper연결코드
	   ArrayList<Jobboard> jobboards = jobboardMapper.selectJobboards();
		
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

}

