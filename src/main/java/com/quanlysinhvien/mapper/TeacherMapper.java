package com.quanlysinhvien.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlysinhvien.model.TeacherModel;

public class TeacherMapper implements RowMapper<TeacherModel>{

	@Override
	public TeacherModel mapRow(ResultSet rs) {
		try {
			TeacherModel teacher = new TeacherModel();
			teacher.setId(rs.getLong("id"));
			teacher.setCode(rs.getString("code"));
			teacher.setImage(rs.getString("image"));
			teacher.setDepartment(rs.getString("department"));
			teacher.setGender(rs.getString("gender"));
			teacher.setPhone(rs.getString("phone"));
			teacher.setDob(rs.getString("dob"));
			teacher.setEmail(rs.getString("email"));
			teacher.setCreatedat(rs.getTimestamp("createdat"));
			teacher.setUpdatedat(rs.getTimestamp("updatedat"));
			return teacher;
		} catch (SQLException e) {
			return null;
		}

	}
	
}
