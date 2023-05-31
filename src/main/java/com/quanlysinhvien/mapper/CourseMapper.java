package com.quanlysinhvien.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlysinhvien.model.CourseModel;

public class CourseMapper implements RowMapper<CourseModel> {

	@Override
	public CourseModel mapRow(ResultSet rs) {
		
		try {
			CourseModel course = new CourseModel();
			course.setId(rs.getLong("id"));
			course.setCode(rs.getString("code"));
			course.setDepartment_id(rs.getString("department_id"));
			course.setSemester_id(rs.getString("semester_id"));
			course.setStart_year(rs.getString("start_year"));
			course.setEnd_year(rs.getString("end_year"));
			course.setCreatedat(rs.getTimestamp("createdat"));
			course.setUpdatedat(rs.getTimestamp("updatedat"));
			return course;
		} catch (SQLException e) {
			return null;
		}
	}
	
}
