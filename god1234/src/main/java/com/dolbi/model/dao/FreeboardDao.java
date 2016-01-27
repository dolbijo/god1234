package com.dolbi.model.dao;

import java.util.ArrayList;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface FreeboardDao {

	int insertFreeboard(Freeboard freeboard);

	//void insertFreeboardFile(JobboardAttachment file);

	/*ArrayList<Upload> getJobboardList();

	Upload getUploadByUploadNo(int JobboardNo);

	ArrayList<UploadFile> getUploadFilesByUploadNo(int JobboardNo);

	UploadFile getUploadFileByUploadFileNo(int JobboardFileNo);
	
	void increaseUploadFileDownloadCount(int JobboardNo);*/

}