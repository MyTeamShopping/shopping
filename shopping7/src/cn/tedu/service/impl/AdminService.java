package cn.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.dao.IAdminDao;
import cn.tedu.dao.impl.AdminDao;
import cn.tedu.exception.ShoppingException;
import cn.tedu.model.Admin;
import cn.tedu.service.IAdminService;
import cn.tedu.util.CodeUtil;
@Service
public class AdminService implements IAdminService{
    private IAdminDao adminDao;
      @Resource
	public void setAdminDao(IAdminDao adminDao) {
		this.adminDao = adminDao;
	}




	@Override
	public void add(Admin admin) {
		  adminDao.add(admin);
	}

	@Override
	public void delete(int id) {
		 adminDao.delete(id);
	}

	@Override
	public void update(Admin admin) {
		 adminDao.update(admin);
	}

	@Override
	public Admin load(int id) {
		return adminDao.load(id);
	}

	@Override
	public List<Admin> list() {
		return adminDao.list();
	}

	@Override
	public Admin login(String username, String password) {
		
		Admin admin=adminDao.login(username);
		if(admin==null){
		
				throw new ShoppingException("您输入的用户名不存在，请查证之后输入");
		
			
		}
		if(!CodeUtil.getMD5Encoding(password).equals(admin.getPassword())){
			
		
				throw new ShoppingException("你输入的密码错误");
		
		}
		return null;
	}

}
