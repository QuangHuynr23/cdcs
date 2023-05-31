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
public class CourseModel extends AbstractModel {
	private String code;
	private String department_id;
	private String semester_id;
	private String start_year;
	private String end_year;
	
	
}
