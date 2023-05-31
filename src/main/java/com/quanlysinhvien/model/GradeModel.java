package com.quanlysinhvien.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
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

}
