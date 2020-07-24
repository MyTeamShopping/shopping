package cn.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.dao.ICartDao;
import cn.tedu.model.Cart;
import cn.tedu.service.ICartService;
@Service
public class CartService implements ICartService{
     
	 private ICartDao cartDao;
	 @Resource
	public void setCartDao(ICartDao cartDao) {
		this.cartDao = cartDao;
	}

	@Override
	public int loadCartSize(int uid) {
		return cartDao.loadCartSize(uid);
	}

	@Override
	public void add(Cart cart) {
		Cart c=  cartDao.loadByProduct(cart);
		if(c==null){
			 cartDao.add(cart);
		}
		// 购物车中有该商品
		else{
			//修改购物车中该商品的数量  
			c.setQuantity(c.getQuantity()+cart.getQuantity());
			cartDao.update(c);
		}
	}

	@Override
	public List<Cart> listByUser(int id) {
		return cartDao.listByUser(id);
	}

	@Override
	public void delete(int cartid) {
		cartDao.delete(cartid);
	}

	@Override
	public Cart load(int cid) {
		return cartDao.load(cid);
	}

	@Override
	public void update(Cart cart) {
		   
		cartDao.update(cart);
	}

}
