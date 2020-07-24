package cn.tedu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.tedu.dao.IOrderDao;
import cn.tedu.model.Order;
import cn.tedu.service.IOrderService;
@Service
public class OrderService implements IOrderService{
    private IOrderDao orderDao;
      @Resource
	public void setOrderDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public void add(Order order) {
		  orderDao.add(order);
	}

	@Override
	public void delete(int id) {
		 orderDao.delete(id);
	}

	@Override
	public void update(Order order) {
		 orderDao.update(order);
	}

	@Override
	public Order load(int id) {
		return orderDao.load(id);
	}

	@Override
	public List<Order> list() {
		return orderDao.list();
	}

}
