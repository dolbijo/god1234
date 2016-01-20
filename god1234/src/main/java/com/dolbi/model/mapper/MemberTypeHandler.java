package com.dolbi.model.mapper;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

//MyBatis의 ResultMap에서 사용할 컬럼 데이터-> 객체의 필드 변환에 적용할 변환기
@SuppressWarnings("rawtypes")
public class MemberTypeHandler implements TypeHandler {

	@Override
	public Object getResult(ResultSet rs, String columnName) throws SQLException {
		
		if (columnName.toLowerCase().equals("usertype")) {
			String userType = rs.getString(columnName);
			if (userType.equals("user")) {
				userType = "일반사용자";
			} else {
				userType = "관리자";
			}
			return userType;
		} //else if (columnName.toLowerCase().equals("active")) {}
			
		return null;
	}

	@Override
	public Object getResult(ResultSet arg0, int arg1) throws SQLException {
		return null;
	}

	@Override
	public Object getResult(CallableStatement arg0, int arg1) throws SQLException {
		return null;
	}

	@Override
	public void setParameter(PreparedStatement arg0, int arg1, Object arg2, JdbcType arg3) throws SQLException {
	}

}
