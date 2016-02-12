package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.mapper.FreeboardMapper;

@Repository("freeboardDao")
public class MySqlFreeboardDao implements FreeboardDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("freeboardMapper")
	private FreeboardMapper freeboardMapper;

	@Override
	public void insertFreeboard(Freeboard freeboard) {
		
		//mapper�뿰寃곗퐫�뱶
		freeboardMapper.insertFreeboard(freeboard);
	}
	


	public ArrayList<Freeboard> getFreeboardList() {
		
		//mapper�뿰寃곗퐫�뱶
		
		 List<Freeboard> freeboards = freeboardMapper.selectFreeboards();
			
		   return (ArrayList<Freeboard>) freeboards;
				
	}
	

	 @Override
	   public Freeboard getFreeboardByFreeboardNo(int freeboardNo) {
	   
		   Freeboard freeboard = freeboardMapper.selectFreeboardByfreeboardNo(freeboardNo);
	      
	      return freeboard;
	      	      
	   }
	 
	   public void updateCount(int freeboardNo) {
		   freeboardMapper.updateCount(freeboardNo);
	   }
	   
	   public int getFreeboardNoByMemberId(String memberId) {
		   
		   int freeboardNo = freeboardMapper.selectFreeboardNoByMemberId(memberId);
		   
		   return freeboardNo;
	   }


	public void insertComment(HashMap<String, Object> map) {
		freeboardMapper.insertComment(map);
	}
	
	public void updateComment(HashMap<String, Object> map) {
		freeboardMapper.updateComment(map);
	}

	public void deleteComment(int commentNo) {
		freeboardMapper.deleteComment(commentNo);
	}
	
}











