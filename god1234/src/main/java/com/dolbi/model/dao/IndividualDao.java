package com.dolbi.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.dolbi.model.dto.Member;

public interface IndividualDao {

	void insert(Member member);

	List<Member> getList();

	Member getMemberById(String id);

	Member getMemberByIdAndPasswd(String id, String passwd);

}