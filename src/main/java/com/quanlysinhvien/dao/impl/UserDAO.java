package com.quanlysinhvien.dao.impl;

import java.util.List;

import com.quanlysinhvien.dao.IUserDAO;
import com.quanlysinhvien.mapper.UserMapper;
import com.quanlysinhvien.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO{

	@Override
	public UserModel findByUserEmailAndPassword(String email, String password) {
		// TODO Auto-generated method stub
		StringBuilder sql = new StringBuilder("SELECT * FROM users AS u");
		sql.append(" INNER JOIN roles AS r ON r.id = u.rolesid");
		sql.append(" WHERE email = ? AND password = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), email, password);
		return users.isEmpty() ? null : users.get(0);
	}
    
}
