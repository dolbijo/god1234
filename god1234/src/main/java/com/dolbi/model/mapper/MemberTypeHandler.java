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
		
		if (columnName.toLowerCase().equals("categoryNo")) {
			String categoryNo = rs.getString(columnName);
			if (categoryNo.equals("1")) {
				categoryNo = "서비스";
			} else if (categoryNo.equals("2")){
				categoryNo = "영업";
			} else if (categoryNo.equals("3")){
				categoryNo = "사무직";
			} else if (categoryNo.equals("4")){
				categoryNo = "건설";
			} else if (categoryNo.equals("5")){
				categoryNo = "생산";
			} else if (categoryNo.equals("6")){
				categoryNo = "IT/프로그래밍";
			} else if (categoryNo.equals("7")){
				categoryNo = "디자인";
			} else {
				categoryNo = "교육/강사";
			}
			return categoryNo;
		} 
			
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
