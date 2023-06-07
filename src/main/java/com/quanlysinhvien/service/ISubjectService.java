package com.quanlysinhvien.service;

import java.util.List;

import com.quanlysinhvien.model.SubjectModel;
import com.quanlysinhvien.model.respone.SubjectRespone;

public interface ISubjectService{
	List<SubjectRespone> findAll();
	List<SubjectModel> findByDeparment_id(Long deparmentid);
	SubjectModel findById(Long id);
	Long insert(SubjectModel subjectModel);
	void delete(Long id);
	void update(SubjectModel subjectModel);
}
