package com.dolbi.model.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Category;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;

public interface IndividualMapper {
	
	int countResumeBymemberId(String id);
	
	Resume selectResumeBymemberId(String id);
	ResumeAttachment selectResumeAttachmentBymemberId(String id);
	ArrayList<Career> selectCareerBymemberId(String id);
	ArrayList<Education> selectEducationBymemberId(String id);
	
	Member selectIndividualByMemberId(String id);

	void insertResume(Resume resume);
	void insertResumeAttachment(ResumeAttachment resumeAttachment);
	void insertCareer(Career career);
	void insertEducation(Education edu);
	
	ArrayList<Application> selectApplicationBymemberId(String memberId);

	ArrayList<Category> selectCategoryBymemberId(String memberId);

	ArrayList<Jobboard> selectJobboardListBycategoryNo(int categoryNo);


	List<Category> selectlikedcategoryListByMemberId(String memberId);

	void deleteApplicationNoBymemberId(int applicationNo);
	

}
