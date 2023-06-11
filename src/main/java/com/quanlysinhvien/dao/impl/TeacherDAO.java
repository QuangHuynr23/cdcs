package com.quanlysinhvien.dao.impl;

import com.quanlysinhvien.dao.ITeacherDAO;
import com.quanlysinhvien.mapper.TeacherMapper;
import com.quanlysinhvien.model.TeacherModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class TeacherDAO extends AbstractDAO<TeacherModel> implements ITeacherDAO {
    private Connection connection = MySQLConnection.getMySQLConnection();

    @Override
    public TeacherModel findById(Long id) {
        String sql ="SELECT * FROM teachers WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setLong(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                TeacherModel teacher = new TeacherModel();
                teacher.setId(rs.getLong("id"));
                teacher.setLname(rs.getString("lname"));
                teacher.setFname(rs.getString("fname"));
                teacher.setCode(rs.getString("code"));
                teacher.setImage(rs.getString("image"));
                teacher.setDepartment_id(rs.getLong("department_id"));
                teacher.setGender(rs.getString("gender"));
                teacher.setPhone(rs.getString("phone"));
                teacher.setDob(rs.getString("dob"));
                teacher.setEmail(rs.getString("email"));
                teacher.setCreatedat(rs.getTimestamp("createdat"));
                teacher.setUpdatedat(rs.getTimestamp("updatedat"));
                return teacher;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    @Override
    public List<TeacherModel> findAll() {
        String sql ="SELECT * FROM chuyendecs.teachers;";
        List<TeacherModel> teacherModels = query(sql, new TeacherMapper());
        return teacherModels;

    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public void update(TeacherModel teacherModel) {

    }

    @Override
    public Long insert(TeacherModel teacherModel) {
        String sql = "INSERT INTO `chuyendecs`.`teachers` ( `code`, `fname`, `image`, `department_id`, `gender`, `phone`, `dob`, `email`, `createdat`, `updatedat`, `lname`) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        return insert(sql, teacherModel.getCode(), teacherModel.getFname(), teacherModel.getImage(),
                teacherModel.getDepartment_id(),teacherModel.getGender(),teacherModel.getPhone(),teacherModel.getDob(), teacherModel.getEmail(),
                teacherModel.getCreatedat(),teacherModel.getUpdatedat(),teacherModel.getLname());
    }
}
