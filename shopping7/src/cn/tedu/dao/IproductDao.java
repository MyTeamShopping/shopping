package cn.tedu.dao;

import java.util.List;

import cn.tedu.model.Product;

public interface IproductDao extends IbaseDao<Product>{
      public List<Product> listAllProduct();
      public void updateSales(Product product);
}
