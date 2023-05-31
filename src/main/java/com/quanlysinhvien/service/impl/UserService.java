package com.quanlysinhvien.service.impl;

import javax.inject.Inject;

import com.quanlysinhvien.dao.IUserDAO;
import com.quanlysinhvien.model.UserModel;
import com.quanlysinhvien.service.IUserService;

public class UserService implements IUserService{

	@Inject
	private IUserDAO userDAO;
	
	@Override
	public UserModel findByUserEmailAndPassword(String email, String password) {
		// TODO Auto-generated method stub
		return userDAO.findByUserEmailAndPassword(email, password);
	}
}
