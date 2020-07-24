package cn.tedu.dao;

import cn.tedu.model.Category;

public interface ICategoryDao extends IbaseDao<Category>{

	  public void add(Category category);
}
