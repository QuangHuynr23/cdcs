package com.quanlysinhvien.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import com.quanlysinhvien.dao.GenericDAO;
import com.quanlysinhvien.mapper.RowMapper;

public class AbstractDAO<T> implements GenericDAO<T>{
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String DB_URL = "jdbc:mysql://localhost:3306/chuyendecs";
			String USER = "root";
			String PASS = "123456";
			return DriverManager.getConnection(DB_URL, USER, PASS);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
	}

	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		return null;
	}
}
