package com.quanlysinhvien.dao;

import com.quanlysinhvien.model.StudentModel;

import java.util.List;

public interface IStudentDAO extends IAbstractDAO<StudentModel> {
    @Override
    List<StudentModel> findAll();

    @Override
    Long insert(StudentModel studentModel);

    @Override
    void delete(Long id);

    @Override
    void update(StudentModel studentModel);
}
