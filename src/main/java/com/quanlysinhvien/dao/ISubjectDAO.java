package com.quanlysinhvien.dao;

import java.util.List;

import com.quanlysinhvien.model.SubjectModel;

public interface ISubjectDAO extends IAbstractDAO<SubjectModel>{
	List<SubjectModel> findAll();
	List<SubjectModel> findByDepartment_id(Long department_id);
	SubjectModel findById(Long id);
	
	Long insert(SubjectModel subjectModel);
	void delete(Long id);
	void update(SubjectModel subjectModel);
}
