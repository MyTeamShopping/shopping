package cn.tedu.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.tedu.dao.IproductDao;
import cn.tedu.model.Product;
@Repository
public class ProductDao extends BaseDao<Product> implements IproductDao{
/**
 * 查询前台页面所有上架商品的 
 */
	@Override
	public List<Product> listAllProduct() {
		return openSession().selectList(Product.class.getName()+".listAllProduct");
	}

	@Override
	public void updateSales(Product product) {
		 openSession().update(Product.class.getName()+".updateSales", product);
	}

	

}
