package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.FreeboardComment;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface FreeboardDao {

	void insertFreeboard(Freeboard freeboard);

	ArrayList<Freeboard> getFreeboardList();

	Freeboard getFreeboardByFreeboardNo(int FreeboardNo);
	
	int getFreeboardNoByMemberId(String memberId);

	void updateCount(int freeboardNo);

	void insertComment(HashMap map);

	void updateComment(HashMap<String, Object> map);

	void deleteComment(int commentNo);

}