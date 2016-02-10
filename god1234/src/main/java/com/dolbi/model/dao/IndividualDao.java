package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Category;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;

public interface IndividualDao {

	int getcountResumeById(String id);
	
	Resume getResumeById(String id);
	ResumeAttachment getResumeAttachmentById(String id);
	ArrayList<Career> getCareerById(String id);
	ArrayList<Education> getEducationById(String id);
	
	Member getIndividualById(String id);
	
	void insertResume(Resume resume);
	void insertResumeAttachment(ResumeAttachment resumeAttachment);
	void insertCareer(Career career);
	void insertEducation(Education edu);
	
	ArrayList<Application> getApplicationList(String memberId);

	ArrayList<Category> getCategoryList(String memberId);

	ArrayList<Jobboard> getJobboardList(int categoryNo);


	List<Category> getlikedcategorylist(String memberId);

	void deleteApplication(int applicationNo);
	

	
}