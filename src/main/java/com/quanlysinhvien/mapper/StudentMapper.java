package com.quanlysinhvien.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlysinhvien.model.StudentModel;

public class StudentMapper implements RowMapper<StudentModel> {

	@Override
	public StudentModel mapRow(ResultSet rs) {
		
		try {
			StudentModel student = new StudentModel();
			student.setId(rs.getLong("id"));
			student.setCode(rs.getString("code"));
			student.setName(rs.getString("name"));
			student.setGender(rs.getBoolean("gender"));
			student.setImage(rs.getString("image"));
			student.setLop(rs.getString("class"));
			student.setBank_number(rs.getString("bank_number"));
			student.setBank(rs.getString("bank"));
			student.setSchool_year_id(rs.getString("school_year_id"));
			student.setDob(rs.getString("dob"));
			student.setAddress(rs.getString("address"));
			student.setIdentify_number(rs.getString("identify_number"));
			student.setIdentify_date(rs.getString("identify_date"));
			student.setIdentify_address(rs.getString("identify_address"));
			student.setProvince(rs.getString("province"));
			student.setDistrict(rs.getString("district"));
			student.setWard(rs.getString("ward"));
			student.setNationality(rs.getString("nationality"));
			student.setEthnic(rs.getString("ethnic"));
			student.setReligion(rs.getString("religion"));
			student.setWish(rs.getString("wish"));
			student.setGraduation_year(rs.getString("graduation_year"));
			student.setFamily(rs.getString("family"));
			student.setTraining_object(rs.getString("traning_object"));
			student.setAffiliates(rs.getString("affiliates"));
			student.setPersonal_phone(rs.getString("personal_phone"));
			student.setFamily_phone(rs.getString("family_phone"));
			student.setOffice_phone(rs.getString("office_phone"));
			student.setEmail(rs.getString("email"));
			student.setNews_to_person(rs.getString("news_to_person"));
			student.setNews_to_address(rs.getString("news_to_address"));
			student.setDate_join_union(rs.getString("date_join_union"));
			student.setDate_join_party(rs.getString("date_join_party"));
			student.setEntry_date(rs.getString("entry_date"));
			student.setGraduation_date(rs.getString("graduation_date"));
			student.setJob(rs.getString("job"));
			student.setLaudatory(rs.getString("laudatory"));
			student.setDiscipline(rs.getString("discipline"));
			student.setCreatedat(rs.getTimestamp("createdat"));
			student.setUpdatedat(rs.getTimestamp("updatedat"));
			return student;
		} catch (SQLException e) {
			return null;
		}
	}
	 	
}
