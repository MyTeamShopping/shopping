package cn.tedu.dao;

import cn.tedu.model.Admin;

public interface IAdminDao extends IbaseDao<Admin>{
   
	public Admin login(String username);
}
