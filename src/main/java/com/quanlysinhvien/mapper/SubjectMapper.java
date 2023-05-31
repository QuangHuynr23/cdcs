package com.quanlysinhvien.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlysinhvien.model.SubjectModel;

public class SubjectMapper implements RowMapper<SubjectModel>{

	@Override
	public SubjectModel mapRow(ResultSet rs) {
		
		try {
			SubjectModel subject = new SubjectModel();
			subject.setId(rs.getLong("id"));
			subject.setCode(rs.getString("code"));
			subject.setName(rs.getString("name"));
			subject.setAll(rs.getInt("all"));
			subject.setTheory(rs.getInt("theory"));
			subject.setPractice(rs.getInt("practice"));
			subject.setExercise(rs.getInt("exercise"));
			subject.setCreatedat(rs.getTimestamp("createdat"));
			subject.setUpdatedat(rs.getTimestamp("updatedat"));
			return subject;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
