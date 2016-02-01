package com.dolbi.model.mapper;

import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Career;
import com.dolbi.model.dto.Education;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Resume;
import com.dolbi.model.dto.ResumeAttachment;

public interface IndividualMapper {
	
	int selectResumeBymemberId(String id);
	
	Member selectIndividualByMemberId(String id);

	void insertResume(Resume resume);
	void insertResumeAttachment(ResumeAttachment resumeAttachment);
	void insertCareer(Career career);
	void insertEducation(Education edu);
}
