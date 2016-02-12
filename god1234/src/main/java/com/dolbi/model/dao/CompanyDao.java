package com.dolbi.model.dao;

import java.util.ArrayList;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

public interface CompanyDao {

	ArrayList<Jobboard> endJobboard(String id);
	ArrayList<Jobboard> ingJobboard(String id);

    ArrayList<Jobboard> getJobboardList();
   
    Jobboard getJobboardByJobboardNo(int jobboardNo);
    
    ArrayList<Application> applicationList(int jobboardNo);
    
    void updateApplication(int applicationNo);
    
    Resume getResumeById(String id);
	ResumeAttachment getResumeAttachmentById(String id);
	ArrayList<Career> getCareerById(String id);
	ArrayList<Education> getEducationById(String id);
	
	Member getIndividualById(String id);

}