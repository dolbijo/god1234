package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;

public interface IndividualDao {

	Resume getResumeById(String id);
	Career getCareerById(String id);
	Education getEducationById(String id);
	
	Member getIndividualById(String id);
	
	void insertResume(Resume resume);
	void insertResumeAttachment(ResumeAttachment resumeAttachment);
	void insertCareer(Career career);
	void insertEducation(Education edu);
}