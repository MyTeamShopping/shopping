package cn.tedu.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.tedu.dao.ICartDao;
import cn.tedu.model.Cart;
import cn.tedu.model.Product;
@Repository
public class CartDao extends BaseDao<Cart> implements ICartDao{

	@Override
	public Cart loadByProduct(Cart cart) {
		return openSession().selectOne(Cart.class.getName()+".loadByProduct", cart);
	}

	@Override
	public int loadCartSize(int uid) {
		return openSession().selectOne(Cart.class.getName()+".loadCartSize",uid);
	}

	@Override
	public List<Cart> listByUser(int uid) {
		return openSession().selectList(Cart.class.getName()+".listByUser", uid);
	}

}
