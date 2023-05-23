package com.quanlysinhvien.model;

public class GradeModel extends AbstractModel {
	private String student_id;
	private String Lop;
	private String subject_id;
	private Float grade1;
	private Float grade2;
	private Float exam1;
	private Float average1;
	private String letter1;
	private Float exam2;
	private Float average2;
	private String letter2;
	public String getStudent_id() {
		return student_id;
	}
	public void setStudent_id(String student_id) {
		this.student_id = student_id;
	}
	public String getLop() {
		return Lop;
	}
	public void setLop(String lop) {
		Lop = lop;
	}
	public String getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(String subject_id) {
		this.subject_id = subject_id;
	}
	public Float getGrade1() {
		return grade1;
	}
	public void setGrade1(Float grade1) {
		this.grade1 = grade1;
	}
	public Float getGrade2() {
		return grade2;
	}
	public void setGrade2(Float grade2) {
		this.grade2 = grade2;
	}
	public Float getExam1() {
		return exam1;
	}
	public void setExam1(Float exam1) {
		this.exam1 = exam1;
	}
	public Float getAverage1() {
		return average1;
	}
	public void setAverage1(Float average1) {
		this.average1 = average1;
	}
	public String getLetter1() {
		return letter1;
	}
	public void setLetter1(String letter1) {
		this.letter1 = letter1;
	}
	public Float getExam2() {
		return exam2;
	}
	public void setExam2(Float exam2) {
		this.exam2 = exam2;
	}
	public Float getAverage2() {
		return average2;
	}
	public void setAverage2(Float average2) {
		this.average2 = average2;
	}
	public String getLetter2() {
		return letter2;
	}
	public void setLetter2(String letter2) {
		this.letter2 = letter2;
	}
	
	
}
