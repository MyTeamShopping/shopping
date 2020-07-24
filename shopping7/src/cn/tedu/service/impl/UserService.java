package cn.tedu.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.dao.IUserDao;
import cn.tedu.exception.ShoppingException;
import cn.tedu.model.User;
import cn.tedu.service.IUserService;
import cn.tedu.util.CodeUtil;
@Service
public class UserService implements IUserService{
        private IUserDao userDao;
    @Resource      
	public void setUserDao(IUserDao userDao) {
			this.userDao = userDao;
		}

	@Override
	public void add(User user) {
		    //密码加密  
		String password =user.getPassword();
		  String newPassword = CodeUtil.getMD5Encoding(password);
		     user.setPassword(newPassword);
		     userDao.add(user);
	}

	@Override
	public User login(String username, String password) {
		   
		  User user = userDao.login(username);
		 if(user==null){
			  throw new ShoppingException("用户名不存在");
		 }
		 if(!user.getPassword().equals(CodeUtil.getMD5Encoding(password))){
			 throw new ShoppingException("密码错误");
		 }
		return user;
	}

}
