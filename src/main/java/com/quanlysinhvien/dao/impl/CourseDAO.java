package com.quanlysinhvien.dao.impl;

import com.quanlysinhvien.model.Course;
import com.quanlysinhvien.model.Semester;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {
    private Connection connection = MySQLConnection.getMySQLConnection();

    public List<Course> findAll(){
        String query = "SELECT * FROM courses";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            List<Course> courses = new ArrayList<>();
            while (rs.next()) {
                Course course = new Course();
                course.setId(rs.getLong("id"));
                course.setName(rs.getString("name"));
                course.setDepartmentId(rs.getLong("department_id"));
                course.setSubjectId(rs.getLong("subject_id"));
                course.setSemesterId(rs.getLong("semester_id"));
                courses.add(course);
            }
            return courses;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Course findById(long id){
        String query = "SELECT * FROM courses WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Course course = new Course();
                course.setId(rs.getLong("id"));
                course.setName(rs.getString("name"));
                course.setDepartmentId(rs.getLong("department_id"));
                course.setSubjectId(rs.getLong("subject_id"));
                course.setSemesterId(rs.getLong("semester_id"));
                return course;
            }
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

}
