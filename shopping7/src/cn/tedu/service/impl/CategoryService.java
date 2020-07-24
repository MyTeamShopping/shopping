package cn.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.dao.ICategoryDao;
import cn.tedu.model.Category;
import cn.tedu.service.ICategoryService;
@Service
public class CategoryService implements ICategoryService{
       private ICategoryDao categoryDao;
       
       @Resource
	public void setCategoryDao(ICategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	@Override
	public void add(Category category) {
		categoryDao.add(category);
		
	}

	@Override
	public void delete(int id) {
    categoryDao.delete(id);		
	}

	@Override
	public void update(Category category) {
    categoryDao.update(category);
	}

	@Override
	public List<Category> list() {
		return categoryDao.list();
	}

	@Override
	public Category load(int id) {
		return categoryDao.load(id);
	}

}
