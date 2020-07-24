package cn.tedu.service;

import java.util.List;

import cn.tedu.model.Category;

public interface ICategoryService {
    
	public void add(Category category);
	public void delete(int id);
	public void update(Category category);
	public List<Category> list();
	public Category load(int id);
	
}
