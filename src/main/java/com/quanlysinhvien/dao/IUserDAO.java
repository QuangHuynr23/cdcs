package com.quanlysinhvien.dao;

import com.quanlysinhvien.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{

	public UserModel findByUserEmailAndPassword(String email, String password);
}
