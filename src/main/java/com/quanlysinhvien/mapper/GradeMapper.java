package com.quanlysinhvien.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlysinhvien.model.GradeModel;

public class GradeMapper implements RowMapper<GradeModel>{

	@Override
	public GradeModel mapRow(ResultSet rs) {
		try {
			GradeModel grade = new GradeModel();
			grade.setId(rs.getLong("id"));
			grade.setStudent_id(rs.getString("student_id"));
			grade.setLop(rs.getString("class"));
			grade.setSubject_id(rs.getString("subject_id"));
			grade.setGrade1(rs.getFloat("grade1"));
			grade.setGrade2(rs.getFloat("grade2"));
			grade.setExam1(rs.getFloat("exam1"));
			grade.setAverage1(rs.getFloat("average1"));
			grade.setLetter1(rs.getString("letter1"));
			grade.setExam2(rs.getFloat("exam2"));
			grade.setAverage2(rs.getFloat("average2"));
			grade.setLetter2(rs.getString("letter2"));
			grade.setCreatedat(rs.getTimestamp("createdat"));
			grade.setUpdatedat(rs.getTimestamp("updatedat"));
			return grade;
		} catch (SQLException e) {
			return null;
		}

	}

}
