package com.dolbi.model.dao;

import java.util.List;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;

public interface HomeDao {

	List<Jobboard> getNewJobboardList();

	List<Jobboard> getPopJobboardList();

	List<Freeboard> getAlbaInfoFreeboardList();

	List<Freeboard> getAlbaWarningFreeboardList();

	List<Freeboard> getAlbaExpFreeboardList();
	

}