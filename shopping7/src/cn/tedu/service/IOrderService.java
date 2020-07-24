package cn.tedu.service;

import java.util.List;

import cn.tedu.model.Order;

public interface IOrderService {
    
	  public void add(Order Order);
	  public void delete(int id);
	  public void update(Order Order);
	  public Order load(int id);
	  public List<Order> list();
	  
	
}
