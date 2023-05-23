package com.quanlysinhvien.model;

public class ClassroomModel extends AbstractModel{
	private String code;
	private String name;
	private String subject_id;
	private String teacher_id;
	private String couser_id;
	private String semester_id;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getCouser_id() {
		return couser_id;
	}
	public void setCouser_id(String couser_id) {
		this.couser_id = couser_id;
	}
	public String getSemester_id() {
		return semester_id;
	}
	public void setSemester_id(String semester_id) {
		this.semester_id = semester_id;
	}
	
	
}
