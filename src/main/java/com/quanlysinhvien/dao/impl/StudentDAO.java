package com.quanlysinhvien.dao.impl;

import com.quanlysinhvien.dao.IStudentDAO;
import com.quanlysinhvien.mapper.StudentMapper;
import com.quanlysinhvien.model.StudentModel;

import java.util.List;

public class StudentDAO extends AbstractDAO<StudentModel> implements IStudentDAO {

    @Override
    public StudentModel findById(Long id) {

        return null;
    }

    @Override
    public List<StudentModel> findAll() {
        String sql = "SELECT * FROM chuyendecs.students;";
        List<StudentModel> studentModels = query(sql,new StudentMapper() );
        return studentModels;
    }

    @Override
    public Long insert(StudentModel studentModel) {
        String sql ="INSERT INTO `chuyendecs`.`students` (`id`,`code`,`name`,`gender`,`image`,`class`,`bank_number`,`bank`,`school_year_id`,`dob`,`address`,`identify_number`,`identify_date`,`identify_address`,`province`,`district`,`ward`,`nationality`,`ethnic`,`religion`,`wish`,`graduation_year`,`family`,`training_object`,`affiliates`,`personal_phone`,`family_phone`,`office_phone`,`email`,`news_to_person`,`news_to_address`,`date_join_union`,`date_join_party`,`entry_date`,`graduation_date`,`job`,`laudatory`,`discipline`,`createdat`,`updatedat`,`position`,`birthday`) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?); ";
        return insert(sql, studentModel.getCode(), studentModel.getName(), studentModel.getGender(), studentModel.getImage(), studentModel.getLop(), studentModel.getBank_number(),studentModel.getBank(),studentModel.getSchool_year_id(),studentModel.getDob(),studentModel.getAddress(),
                studentModel.getIdentify_number(),studentModel.getIdentify_date(),studentModel.getIdentify_address(),studentModel.getProvince(),studentModel.getDistrict(),studentModel.getWard(),studentModel.getNationality(),studentModel.getEthnic(),studentModel.getReligion(),studentModel.getWish(),studentModel.getGraduation_year(),studentModel.getFamily(),studentModel.getTraining_object(),studentModel.getAffiliates(),studentModel.getPersonal_phone(),
                studentModel.getFamily_phone(),studentModel.getOffice_phone(),studentModel.getEmail(),studentModel.getNews_to_person(),studentModel.getNews_to_address(),studentModel.getDate_join_union(),studentModel.getDate_join_party(),studentModel.getEthnic(),studentModel.getGraduation_date(),studentModel.getJob(),studentModel.getLaudatory(),studentModel.getDiscipline(),studentModel.getCreatedat(),studentModel.getUpdatedat(),studentModel.getPosition(),studentModel.getBirthday());
    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public void update(StudentModel studentModel) {

    }
}
