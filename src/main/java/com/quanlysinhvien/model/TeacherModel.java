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

public class TeacherModel extends AbstractModel{
	private String code;
	private String name;
	private String image;
	private String department;
	private String gender;
	private String phone;
	private String dob;
	private String email;

}
