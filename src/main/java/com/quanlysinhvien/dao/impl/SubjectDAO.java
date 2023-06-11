package com.quanlysinhvien.dao.impl;

import java.util.List;

import com.quanlysinhvien.dao.ISubjectDAO;
import com.quanlysinhvien.mapper.SubjectMapper;
import com.quanlysinhvien.model.SubjectModel;

public class SubjectDAO extends AbstractDAO<SubjectModel> implements ISubjectDAO{


	@Override
	public List<SubjectModel> findAll() {
		String sql = "SELECT * FROM chuyendecs.subjects" ;
		List<SubjectModel> subjectModels = query(sql, new SubjectMapper());
		return subjectModels;
	}

	@Override
	public List<SubjectModel> findByDepartment_id(Long department_id) {
		StringBuilder sql = new StringBuilder("SELECT * FROM chuyendecs.subjects");
		sql.append("Where department_id =?");
		List<SubjectModel> subjectModels = query(sql.toString(), new SubjectMapper(), department_id);
		return subjectModels.size() == 1 ? subjectModels : null;
	}


	@Override
	public Long insert(SubjectModel subjectModel) {
		String sql = "INSERT INTO `chuyendecs`.`subjects` (`code`,`name`,`department_id`,`alls`,`theory`,`practice`,`exercise`,`createdat`,`updatedat`,`course_load`,`semester`) VALUES(?,?,?,?,?,?,?,?,?,?,?);";
		return insert(sql, subjectModel.getCode(),subjectModel.getName(),subjectModel.getDepartment_id()
				,subjectModel.getAlls(),subjectModel.getTheory(),subjectModel.getPractice(),subjectModel.getExercise(),subjectModel.getCreatedat(),subjectModel.getUpdatedat(),subjectModel.getCourse_load()) 	;
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		String sql ="DELETE FROM `chuyendecs`.`subjects` WHERE id = ? ;";
		update(sql,id);
		
	}

	@Override
	public void update(SubjectModel subjectModel) {
		String sql ="UPDATE `chuyendecs`.`subjects` SET `code` = ?,`name` = ?,`department_id` = ?,`alls` = ?,`theory` = ?,`practice` = ?,`exercise` = ?,`createdat` = ?,`updatedat` = ?,`course_load` = ?, `semester` = ? WHERE `id` = ? ;";
		update(sql, subjectModel.getCode(),subjectModel.getName(),subjectModel.getDepartment_id()
				,subjectModel.getAlls(),subjectModel.getTheory(),subjectModel.getPractice(),subjectModel.getExercise(),subjectModel.getCreatedat(),subjectModel.getUpdatedat(),subjectModel.getCourse_load(),subjectModel.getSemester(),subjectModel.getId());
	}

	@Override
	public SubjectModel findById(Long id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM chuyendecs.subjects WHERE id = ? ; " ;
		List<SubjectModel> subjectModels = query(sql, new SubjectMapper());
		return subjectModels.isEmpty() ? null : subjectModels.get(0) ;
	}





	


}
