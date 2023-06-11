package com.quanlysinhvien.service.impl;

import com.quanlysinhvien.dao.IStudentDAO;
import com.quanlysinhvien.model.StudentModel;
import com.quanlysinhvien.service.IStudentService;
import com.quanlysinhvien.service.ISubjectService;

import javax.inject.Inject;
import java.util.List;

public class StudentService implements IStudentService {
    @Inject
    private IStudentDAO studentDAO;

    @Override
    public List<StudentModel> findAll() {


        return studentDAO.findAll();
    }

    @Override
    public Long insert(StudentModel studentModel) {
        return null;
    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public void update(StudentModel studentModel) {

    }

	@Override
	public StudentModel getOneById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}
}
