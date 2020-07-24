package cn.tedu.dao.impl;

import org.springframework.stereotype.Repository;

import cn.tedu.dao.IAdminDao;
import cn.tedu.model.Admin;
@Repository
public class AdminDao extends BaseDao<Admin> implements IAdminDao{

	@Override
	public Admin login(String username) {
		
		     Admin admin = openSession().selectOne(Admin.class.getName()+".login", username);
		return admin;
	}

}
