package cn.tedu.dao.impl;

import org.springframework.stereotype.Repository;

import cn.tedu.dao.IUserDao;
import cn.tedu.model.User;
@Repository
public class UserDao extends BaseDao<User> implements IUserDao{

	@Override
	public User login(String username) {
		return openSession().selectOne(User.class.getName()+".login", username);
	}



}
