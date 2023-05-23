package com.quanlysinhvien.model;

public class CourseModel extends AbstractModel {
	private String code;
	private String department_id;
	private String semester_id;
	private String start_year;
	private String end_year;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	public String getSemester_id() {
		return semester_id;
	}
	public void setSemester_id(String semester_id) {
		this.semester_id = semester_id;
	}
	public String getStart_year() {
		return start_year;
	}
	public void setStart_year(String start_year) {
		this.start_year = start_year;
	}
	public String getEnd_year() {
		return end_year;
	}
	public void setEnd_year(String end_year) {
		this.end_year = end_year;
	}
	
}
