package com.dolbi.model.dao;

import java.util.ArrayList;

import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface JobboardDao {

	int insertUpload(Upload upload);

	void insertUploadFile(UploadFile file);

	ArrayList<Upload> getUploadList();

	Upload getUploadByUploadNo(int JobboardNo);

	ArrayList<UploadFile> getUploadFilesByUploadNo(int JobboardNo);

	UploadFile getUploadFileByUploadFileNo(int JobboardFileNo);
	
	void increaseUploadFileDownloadCount(int JobboardNo);

}