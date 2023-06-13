package com.quanlysinhvien.dao.impl;

import com.quanlysinhvien.dao.ITeacherDAO;
import com.quanlysinhvien.mapper.TeacherMapper;
import com.quanlysinhvien.model.TeacherModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
    public List<TeacherModel> search(Long department, String code) {
        String sql ="SELECT * FROM teachers WHERE 1 = 1";
        if(department!= null && department > 0){
            sql += " AND department_id = "+ department;
        }
        if(code !=null && !code.isEmpty()){
            sql += " AND code = '" + code+"'";
        }
        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            List<TeacherModel>  teacherModels = new ArrayList<>();
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
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
                teacherModels.add(teacher);

            }
            return teacherModels;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void delete(Long id) {
        String query = "DELETE FROM teachers WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setLong(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(TeacherModel teacherModel) {
        String sql = "UPDATE teachers SET code = ?, lname = ?, fname = ?, image = ?, department_id = ?, gender = ?, phone = ?, dob = ?, email = ? WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, teacherModel.getCode());
            ps.setString(2, teacherModel.getLname());
            ps.setString(3, teacherModel.getFname());
            ps.setString(4, teacherModel.getImage());
            ps.setLong(5, teacherModel.getDepartment_id());
            ps.setString(6, teacherModel.getGender());
            ps.setString(7, teacherModel.getPhone());
            ps.setString(8, teacherModel.getDob());
            ps.setString(9, teacherModel.getEmail());
            ps.setLong(10, teacherModel.getId());
            ps.executeUpdate();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Long insert(TeacherModel teacherModel) {
        String sql = "INSERT INTO `chuyendecs`.`teachers` ( `code`, `fname`, `image`, `department_id`, `gender`, `phone`, `dob`, `email`, `createdat`, `updatedat`, `lname`) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        return insert(sql, teacherModel.getCode(), teacherModel.getFname(), teacherModel.getImage(),
                teacherModel.getDepartment_id(),teacherModel.getGender(),teacherModel.getPhone(),teacherModel.getDob(), teacherModel.getEmail(),
                teacherModel.getCreatedat(),teacherModel.getUpdatedat(),teacherModel.getLname());
    }
}
