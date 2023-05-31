package com.quanlysinhvien.service;

import com.quanlysinhvien.model.UserModel;

public interface IUserService {
	UserModel findByUserEmailAndPassword(String email, String password);
}
