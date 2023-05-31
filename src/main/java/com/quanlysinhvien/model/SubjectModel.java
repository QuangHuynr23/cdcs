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
public class SubjectModel extends AbstractModel{
	private String code;
	private String name;
	private Integer all;
	private Integer theory;
	private Integer practice;
	private Integer exercise;

}
