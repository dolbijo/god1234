package com.dolbi.model.service;

import java.util.List;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Member;

public interface FreeboardService {

	List<Freeboard> getAllfreeboards();

	//Member searchMemberById(String id);

	//Member searchMemberByIdAndPasswd(String id, String passwd);

	void registerFreeboard(Freeboard freeboard);

}