package com.dolbi.model.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Application;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;

public interface CompanyMapper {
	
	List<Jobboard> selectJobboards();
	List<Jobboard> selectJobboards2();

	Jobboard selectMemberByIdAndPasswd(HashMap<String, Object> params);
	Jobboard selectMemberById(String M_ID);
	
	
	ArrayList<Jobboard> selectIngJobboards(String id);
	ArrayList<Jobboard> selectEndJobboards(String id);
	
	ArrayList<Application> selectApplication(int jobboardNo);

}
