package cn.tedu.service;

import java.util.List;

import cn.tedu.model.Admin;

public interface IAdminService {
    
	  public void add(Admin admin);
	  public void delete(int id);
	  public void update(Admin admin);
	  public Admin load(int id);
	  public List<Admin> list();
	  public Admin login(String username,String password);
	  
	
}
