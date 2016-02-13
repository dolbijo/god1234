package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;

public interface JobboardDao {

   int insertJobboard(Jobboard jobboard);

   void insertJobboardFile(JobboardAttachment file);

   ArrayList<Jobboard> getJobboardList(HashMap<String, Object> map);
   
   Jobboard getJobboardByJobboardNo(int jobboardNo);

   void insertApplication(String memberId, String jobboardNo);

   void updateCount(int jobboardNo);

   int getJobboardNoByMemberId(String memberId);

   int getCount();
   
   Jobboard getNext(int num);
   
   Jobboard getPrev(int num);

   List<Jobboard> getsearchList(String searchTag);

   void deleteJobboardAttachmentByJobboardNo(int jobboardNo);

   void updateJobboard(Jobboard jobboard);

   Member getCompanyByMemberId(String memberId);


}