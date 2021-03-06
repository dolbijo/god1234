package com.dolbi.model.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;

public interface JobboardMapper {
	
	ArrayList<Jobboard> selectJobboards(HashMap<String, Object> map);
	List<Jobboard> selectJobboards2();

	Jobboard selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Jobboard selectMemberById(String M_ID);
	Jobboard selectJobboardByjobboardNo(int jobboardNo);
	
	int insertJobboard(Jobboard jobboard);
	void insertJobboardFile(JobboardAttachment file);
	
	void insertApplication(HashMap<String, Object> params);
	
	void updateCount(int jobboardNo);
	
	int selectJobboardNoByMemberId(String memberId);
	
	int selectCount();
	
	List<Jobboard> selectJobboardBySearchTag(String searchTag);
	
	
	Jobboard selectNext(int num);
	
	Jobboard selectPrev(int num);
	
	void deleteJobboardAttachmentByJobboardNo(int jobboardNo);
	
	void updateJobboard(Jobboard jobboard);
	
	Member selectCompanyByMemberId(String memberId);

}
