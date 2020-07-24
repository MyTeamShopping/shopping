package cn.tedu.dao.impl;

import org.springframework.stereotype.Repository;

import cn.tedu.dao.ICategoryDao;
import cn.tedu.model.Category;
@Repository
public class CategoryDao extends BaseDao<Category> implements ICategoryDao{
    
	  public void add(Category category){
		  openSession().insert("cn.tedu.model.Category.add", category);
	  }
}
