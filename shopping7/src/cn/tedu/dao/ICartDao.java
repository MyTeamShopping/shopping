package cn.tedu.dao;

import java.util.List;

import cn.tedu.model.Cart;
import cn.tedu.model.Product;

public interface ICartDao extends IbaseDao<Cart>{

      public	Cart loadByProduct(Cart cart);
     public int loadCartSize(int uid);
      public List<Cart> listByUser(int uid);
}    
