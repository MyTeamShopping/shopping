package cn.tedu.dao.impl;

import org.springframework.stereotype.Repository;

import cn.tedu.dao.IOrderDao;
import cn.tedu.model.Order;
@Repository
public class OrderDao extends BaseDao<Order> implements IOrderDao{

}
