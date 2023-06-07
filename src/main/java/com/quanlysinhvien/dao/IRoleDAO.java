package com.quanlysinhvien.dao;

import com.quanlysinhvien.model.RoleModel;

public interface IRoleDAO extends GenericDAO<RoleModel>{
	RoleModel findByRoleId(Long id);
}
