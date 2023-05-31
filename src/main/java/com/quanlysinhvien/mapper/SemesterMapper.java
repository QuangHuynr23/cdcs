package com.quanlysinhvien.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlysinhvien.model.SemesterModel;

public class SemesterMapper implements RowMapper<SemesterModel>{

	@Override
	public SemesterModel mapRow(ResultSet rs) {		
		try {
			SemesterModel semester = new SemesterModel();
			semester.setId(rs.getLong("id"));
			semester.setName(rs.getString("name"));
			semester.setCourse_id(rs.getString("course_id"));
			semester.setSubject_id(rs.getString("subject_id"));
			semester.setCreatedat(rs.getTimestamp("createdat"));
			semester.setUpdatedat(rs.getTimestamp("updatedat"));
			return semester;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
}
