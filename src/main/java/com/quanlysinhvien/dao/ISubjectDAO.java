package com.quanlysinhvien.dao;

import java.util.List;

import com.quanlysinhvien.model.SubjectModel;

public interface ISubjectDAO extends GenericDAO{
	List<SubjectModel> findAll();
}
