package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface FreeboardDao {

	void insertFreeboard(Freeboard freeboard);

	ArrayList<Freeboard> getFreeboardList();

	Freeboard getFreeboardByFreeboardNo(int FreeboardNo);
	
    void insertApplication(String memberId, String freeboardNo);

	void updateCount(int freeboardNo);

	int getFreeboardNoByMemberId(String memberId);

	 //List<Jobboard> getsearchList(String searchTag);

}