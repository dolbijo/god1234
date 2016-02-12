package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.dolbi.model.dto.Freeboard;

public interface FreeboardDao {

	void insertFreeboard(Freeboard freeboard);

	ArrayList<Freeboard> getFreeboardList();

	Freeboard getFreeboardByFreeboardNo(int FreeboardNo);

	void updateCount(int freeboardNo);

	int getFreeboardNoByMemberId(String memberId);

	void insertComment(HashMap<String, Object> map);

	void updateComment(HashMap<String, Object> map);

	void deleteComment(int commentNo);

}