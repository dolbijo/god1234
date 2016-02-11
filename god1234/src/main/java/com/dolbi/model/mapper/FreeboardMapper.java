package com.dolbi.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;

public interface FreeboardMapper {
	
	List<Freeboard> selectFreeboards();
	
	Freeboard selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Freeboard selectMemberById(String M_ID);
	Freeboard selectFreeboardByfreeboardNo(int freeboardNo);
	
	void insertFreeboard(Freeboard freeboard);

	
	void insertApplication(HashMap<String, Object> params);
	
	void updateCount(int freeboardNo);
	
	int selectFreeboardNoByMemberId(String memberId);
	
	//List<Jobboard> selectJobboardBySearchTag(String searchTag);
}
