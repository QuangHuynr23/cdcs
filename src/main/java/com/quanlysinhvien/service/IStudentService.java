package com.quanlysinhvien.service;

import com.quanlysinhvien.model.StudentModel;

import java.util.List;

public interface IStudentService extends  IGenericService<StudentModel>{
    List<StudentModel> findAll();

    @Override
    Long insert(StudentModel studentModel);

    @Override
    void delete(Long id);

    @Override
    void update(StudentModel studentModel);
}
