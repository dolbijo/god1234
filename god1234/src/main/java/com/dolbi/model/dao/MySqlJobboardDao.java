/*package com.dolbi.model.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.dolbi.model.dto.Jobboard;
import com.dolbi.model.dto.JobboardAttachment;
import com.dolbi.model.dto.Member;
import com.dolbi.model.dto.Upload;
import com.dolbi.model.dto.UploadFile;
import com.dolbi.model.mapper.IndividualMapper;
import com.dolbi.model.mapper.JobboardMapper;

@Repository("jobboardDao")
public class MySqlJobboardDao implements JobboardDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	@Qualifier("jobboardMapper")
	private JobboardMapper jobboardMapper;

	@Override
	public int insertJobboard(Jobboard jobboard) {
		
		//mapper�뿰寃곗퐫�뱶
		
		return jobboard.getJobboardNo();

	}
	
	@Override
	public void insertJobboardFile(JobboardAttachment file) {
		
		//mapper�뿰寃곗퐫�뱶
		
	}

	@Override
	public ArrayList<Upload> getJobboardList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Jobboard> getJobboardList() {
		
		//mapper�뿰寃곗퐫�뱶
		
		return (ArrayList<Jobboard>)uploads;
				
	}
	
	@Override
	public Upload getUploadByUploadNo(int uploadNo) {
	
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











*/