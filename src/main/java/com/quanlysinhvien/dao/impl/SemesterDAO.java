package com.quanlysinhvien.dao.impl;

import com.quanlysinhvien.model.Course;
import com.quanlysinhvien.model.Semester;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SemesterDAO {
    private Connection connection = MySQLConnection.getMySQLConnection();

    public List<Semester> findAll(){
        String query = "SELECT * FROM semesters";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            List<Semester> semesters = new ArrayList<>();
            while (rs.next()) {
                Semester semester = new Semester();
                semester.setId(rs.getLong("id"));
                semester.setName(rs.getString("name"));
                semester.setStartDate(rs.getString("start_at"));
                semester.setEndDate(rs.getString("end_at"));
                semesters.add(semester);
            }
            return semesters;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Semester findById(long id){
        String query = "SELECT * FROM semesters WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Semester semester = new Semester();
                semester.setId(rs.getLong("id"));
                semester.setName(rs.getString("name"));
                semester.setStartDate(rs.getString("start_at"));
                semester.setEndDate(rs.getString("end_at"));
                return semester;
            }
            return null;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

}
