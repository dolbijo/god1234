package com.dolbi.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Freeboard;
import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.mapper.HomeMapper;


@Repository("homeDao")
public class MySqlHomeDao implements HomeDao {

   @Autowired
   @Qualifier("sqlSessionTemplate")
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Autowired
   @Qualifier("homeMapper")
   private HomeMapper homeMapper;
   
   public List<Jobboard> getNewJobboardList() {
	   List<Jobboard> newjobboards = homeMapper.getNewJobboardList();
	   
	   return newjobboards;
   }

   public List<Jobboard> getPopJobboardList() {
	   List<Jobboard> popjobboards = homeMapper.getPopJobboardList();
	   
	   return popjobboards;
   }

   public List<Freeboard> getAlbaInfoFreeboardList() {
	   List<Freeboard> albainfofreeboards = homeMapper.getAlbaInfoFreeboardList();
	   
	   return albainfofreeboards;
   }

   public List<Freeboard> getAlbaWarningFreeboardList() {
	   List<Freeboard> albawarningfreeboards = homeMapper.getAlbaWarningFreeboardList();
	   
	   return albawarningfreeboards;
   }

   public List<Freeboard> getAlbaExpFreeboardList() {
	   List<Freeboard> albaexpfreeboards = homeMapper.getAlbaExpFreeboardList();
	   
	   return albaexpfreeboards;
   }
}

