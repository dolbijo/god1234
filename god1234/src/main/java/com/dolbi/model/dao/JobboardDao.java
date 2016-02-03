package com.dolbi.model.dao;

import java.util.ArrayList;

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface JobboardDao {

   int insertJobboard(Jobboard jobboard);

   void insertJobboardFile(JobboardAttachment file);

   ArrayList<Jobboard> getJobboardList();
   
   Jobboard getJobboardByJobboardNo(int jobboardNo);

   void insertApplication(String memberId, String jobboardNo);

}