package cn.tedu.service;

import java.util.List;

import cn.tedu.model.Product;

public interface IproductService {

	public void add(Product product);
	public void delete(int id);
	public void update(Product product);
	public Product load(int id);
	  public List<Product> list();
	 public List<Product> listAllProduct();
	 public void updateSales(Product product);
}
