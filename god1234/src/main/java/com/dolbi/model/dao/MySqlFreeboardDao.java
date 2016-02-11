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

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.FreeboardComment;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.mapper.FreeboardMapper;
import com.dolbi.model.mapper.IndividualMapper;
import com.dolbi.model.mapper.JobboardMapper;

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

}











