package com.dolbi.model.mapper;


import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Freeboard;


public interface FreeboardMapper {
	
	List<Freeboard> selectFreeboards();
	
	Freeboard selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Freeboard selectMemberById(String M_ID);
	Freeboard selectFreeboardByfreeboardNo(int freeboardNo);
	
	void insertFreeboard(Freeboard freeboard);
}
