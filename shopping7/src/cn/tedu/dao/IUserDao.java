package cn.tedu.dao;

import cn.tedu.model.User;

public interface IUserDao extends IbaseDao<User>{
   
	public void update(User user);
	public User login(String username);
}
