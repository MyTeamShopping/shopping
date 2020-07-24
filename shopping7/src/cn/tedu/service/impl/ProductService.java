package cn.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.dao.IproductDao;
import cn.tedu.model.Product;
import cn.tedu.service.IproductService;
@Service
public class ProductService implements IproductService{
     private IproductDao productDao;
     @Resource
	public void setProductDao(IproductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public void add(Product product) {
		productDao.add(product);
	}

	@Override
	public void delete(int id) {
		productDao.delete(id);
	}

	@Override
	public void update(Product product) {
		productDao.update(product);
	}

	@Override
	public Product load(int id) {
		return productDao.load(id);
	}

	@Override
	public List<Product> list() {
		return productDao.list();
	}

	@Override
	public List<Product> listAllProduct() {
		return productDao.listAllProduct();
	}

	@Override
	public void updateSales(Product product) {
		  
		productDao.updateSales(product);
	}


}
