package com.dolbi.model.mapper;


import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Freeboard;


public interface FreeboardMapper {
	
	List<Freeboard> selectFreeboards(String freeboardtype);
	
	Freeboard selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Freeboard selectMemberById(String M_ID);
	Freeboard selectFreeboardByfreeboardNo(int freeboardNo);
	
	void insertFreeboard(Freeboard freeboard);
	
	void updateCount(int freeboardNo);
	
	int selectFreeboardNoByMemberId(String memberId);

	void insertComment(HashMap<String, Object> map);

	void updateComment(HashMap<String, Object> map);

	void deleteComment(int commentNo);
	
}
