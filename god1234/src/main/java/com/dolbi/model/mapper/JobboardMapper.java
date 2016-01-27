package com.dolbi.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;

public interface JobboardMapper {
	
	List<Jobboard> selectJobboards();

	/*Jobboard selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Jobboard selectMemberById(String M_ID);*/
	
	void insertJobboard(Jobboard jobboardNo);

}
