package com.quanlysinhvien.dao.impl;

import com.quanlysinhvien.dao.ITeacherDAO;
import com.quanlysinhvien.mapper.TeacherMapper;
import com.quanlysinhvien.model.TeacherModel;

import java.util.List;

public class TeacherDAO extends AbstractDAO<TeacherModel> implements ITeacherDAO {

    @Override
    public TeacherModel findById(Long id) {
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
