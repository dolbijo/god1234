package com.dolbi.model.service;

import java.util.List;

import com.dolbi.model.dto.Jobboard;


public interface JobboardService {

	List<Jobboard> getAllJobboards();

	Jobboard searchMemberById(String id);

	void registerJobboard(Jobboard jobboard);

}