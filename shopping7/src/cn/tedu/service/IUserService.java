package cn.tedu.service;

import cn.tedu.model.User;

public interface IUserService {
  
	public void add(User user);
	public User login(String username,String password);
}
