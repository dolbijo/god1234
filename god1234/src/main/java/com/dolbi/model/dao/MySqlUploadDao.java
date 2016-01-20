package com.dolbi.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;

@Repository("uploadDao")
public class MySqlUploadDao implements UploadDao {

	@Autowired
	@Qualifier("jdbcTemplate")
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int insertUpload(Upload upload) {
		
		//upload.getUploadNo() -> 0 (데이터가 할당되지 않은 상태)
		
//		sqlSessionTemplate.insert(
//			"com.mvcdemoweb.model.mapper.UploadMapper.insertUpload", upload);
		
		sqlSessionTemplate.insert(
			"com.mvcdemoweb.model.mapper.UploadMapper.insertUpload2", upload);
		
		//upload.getUploadNo() -> 의미 있는 값 (데이터가 할당된 상태)
		System.out.println(upload.getUploadNo());
		
		return upload.getUploadNo();
		
	}
	
	@Override
	public void insertUploadFile(UploadFile file) {
		
		sqlSessionTemplate.insert(
			"com.dolbi.model.mapper.UploadMapper.insertUploadFile", file);
		
	}
	
	@Override
	public ArrayList<Upload> getUploadList() {
		
		List<Upload> uploads = sqlSessionTemplate.selectList(
			"com.dolbi.model.mapper.UploadMapper.selectUploadList");
		
		return (ArrayList<Upload>)uploads;
				
	}
	
	@Override
	public Upload getUploadByUploadNo(int uploadNo) {
	
		//중첩 result-map 방식
//		Upload upload = sqlSessionTemplate.selectOne(
//			"com.mvcdemoweb.model.mapper.UploadMapper.selectUploadByUploadNo", uploadNo);
		
		//중첩 select 방식
		Upload upload = sqlSessionTemplate.selectOne(
			"com.dolbi.model.mapper.UploadMapper.selectUploadByUploadNo2", uploadNo);
		
		return upload;
		
		
	}
	
	@Override
	public ArrayList<UploadFile> getUploadFilesByUploadNo(int uploadNo) {
		
		String sql = 
			"SELECT uploadFileNo, uploadNo, savedFileName, userFileName " + 
			"FROM uploadfile WHERE uploadno = ?";
			
		List<UploadFile> files = 
			jdbcTemplate.query(sql, new Object[] { uploadNo }, new RowMapper<UploadFile>() {

				@Override
				public UploadFile mapRow(ResultSet rs, int rowNum) throws SQLException {
					UploadFile file = new UploadFile();
					file.setUploadFileNo(rs.getInt(1));
					file.setUploadNo(rs.getInt(2));
					file.setSavedFileName(rs.getString(3));
					file.setUserFileName(rs.getString(4));
					return file;
				}
				
			});
		
		return (ArrayList<UploadFile>)files;
	}
	
	@Override
	public UploadFile getUploadFileByUploadFileNo(int uploadFileNo) {

		String sql = 
			"SELECT uploadFileNo, uploadNo, savedFileName, userFileName " + 
			"FROM uploadfile WHERE uploadfileno = ?";
		
		UploadFile file = 
			jdbcTemplate.queryForObject(sql, new Object[] { uploadFileNo }, new RowMapper<UploadFile>() {

				@Override
				public UploadFile mapRow(ResultSet rs, int rowNum) throws SQLException {
					UploadFile file = new UploadFile();
					file = new UploadFile();
					file.setUploadFileNo(rs.getInt(1));
					file.setUploadNo(rs.getInt(2));
					file.setSavedFileName(rs.getString(3));
					file.setUserFileName(rs.getString(4));
					return file;
				}
				
			});
		
		return file;
		
	}

	@Override
	public void increaseUploadFileDownloadCount(int uploadFileNo) {
		String sql = 
			"UPDATE uploadfile SET downloadcount = downloadcount + 1 WHERE uploadfileno = ?";
		jdbcTemplate.update(sql, uploadFileNo);
		
	}
	
}
























