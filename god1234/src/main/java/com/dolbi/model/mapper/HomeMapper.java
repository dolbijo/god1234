package com.dolbi.model.mapper;

import java.util.List;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;

public interface HomeMapper {

	List<Jobboard> getNewJobboardList();

	List<Jobboard> getPopJobboardList();

	List<Freeboard> getAlbaInfoFreeboardList();

	List<Freeboard> getAlbaWarningFreeboardList();

	List<Freeboard> getAlbaExpFreeboardList();
}
