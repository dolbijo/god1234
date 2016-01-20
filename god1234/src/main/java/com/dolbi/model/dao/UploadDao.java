package com.dolbi.model.dao;

import java.util.ArrayList;

import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface UploadDao {

	int insertUpload(Upload upload);

	void insertUploadFile(UploadFile file);

	ArrayList<Upload> getUploadList();

	Upload getUploadByUploadNo(int uploadNo);

	ArrayList<UploadFile> getUploadFilesByUploadNo(int uploadNo);

	UploadFile getUploadFileByUploadFileNo(int uploadFileNo);
	
	void increaseUploadFileDownloadCount(int uploadFileNo);

}