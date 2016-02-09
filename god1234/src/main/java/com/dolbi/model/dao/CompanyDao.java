package com.dolbi.model.dao;

import java.util.ArrayList;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface CompanyDao {

	ArrayList<Jobboard> endJobboard(String id);
	ArrayList<Jobboard> ingJobboard(String id);

    ArrayList<Jobboard> getJobboardList();
   
    Jobboard getJobboardByJobboardNo(int jobboardNo);
    
    ArrayList<Application> applicationList(int jobboardNo);

}