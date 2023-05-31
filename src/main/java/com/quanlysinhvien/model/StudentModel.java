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
public class StudentModel extends AbstractModel{
	private String code;
	private String name;
	private Boolean gender;
	private String image;
	private String Lop;
	
	private String bank_number;
	private String bank;
	private String school_year_id;
	private String dob;
	private String address;
	private String identify_number;
	private String identify_date;
	private String identify_address;
	private String province;
	private String district;
	private String ward;
	private String nationality;
	private String ethnic;
	private String religion;
	private String wish;
	private String graduation_year;
	private String family;
	private String training_object;
	private String affiliates;
	private String personal_phone;
	private String family_phone;
	private String office_phone;
	private String email;
	private String news_to_person;
	private String news_to_address;	
	private String date_join_union;
	private String date_join_party;
	private String entry_date;
	private String graduation_date;
	private String job;
	private String laudatory;
	private String discipline;
}
