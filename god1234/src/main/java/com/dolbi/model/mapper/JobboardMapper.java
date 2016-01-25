package com.dolbi.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;

public interface JobboardMapper {
	
	List<Jobboard> selectJobboards();
	List<Jobboard> selectJobboards2();
	Jobboard selectJobboardByIdAndPasswd(HashMap<String, Object> params);
	Jobboard selectJobboardById(String id);
	
	void insertMember(Jobboard J_NO);

}
