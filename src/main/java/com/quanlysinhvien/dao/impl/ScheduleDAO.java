package com.quanlysinhvien.dao.impl;

import com.quanlysinhvien.model.Course;
import com.quanlysinhvien.model.Schedule;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ScheduleDAO {
    private Connection connection = MySQLConnection.getMySQLConnection();

    public void insert(Schedule schedule) {
        String sql = "INSERT INTO schedules (courses_id,semester_id,department_id,teacher_id,total_class, subject_id) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, schedule.getCoursesId());
            ps.setLong(2, schedule.getSemesterId());
            ps.setLong(3, schedule.getDepartmentId());
            ps.setLong(4, schedule.getTeacherId());
            ps.setLong(5, schedule.getTotalClass());
            ps.setLong(6, schedule.getSubjectId());

            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public List<Schedule> findAll(){
        String query = "SELECT * FROM schedules";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            List<Schedule> schedules = new ArrayList<>();
            while (rs.next()) {
                Schedule schedule = new Schedule();
                schedule.setCoursesId(rs.getLong("courses_id"));
                schedule.setSemesterId(rs.getLong("semester_id"));
                schedule.setTeacherId(rs.getLong("teacher_id"));
                schedule.setDepartmentId(rs.getLong("department_id"));
                schedule.setTotalClass(rs.getLong("total_class"));
                schedule.setSubjectId(rs.getLong("subject_id"));
                schedules.add(schedule);
            }
            return schedules;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
