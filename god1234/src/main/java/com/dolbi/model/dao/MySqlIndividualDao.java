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

	public int getResumeById(String id) {
		
		int resume = individualMapper.selectResumeBymemberId(id);
		
		return resume;
		
	}
}











