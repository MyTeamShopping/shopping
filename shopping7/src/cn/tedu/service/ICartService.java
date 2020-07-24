package cn.tedu.service;

import java.util.List;

import cn.tedu.model.Cart;

public interface ICartService {

	int loadCartSize(int id);

	void add(Cart cart);

	List<Cart> listByUser(int id);

	void delete(int cartid);

	Cart load(int cid);

	void update(Cart cart);

}
