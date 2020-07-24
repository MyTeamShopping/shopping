package cn.tedu.model;

import java.sql.Timestamp;

public class Cart {

	private int id;
	private Product product;
	private User user;
	private int quantity;//购买的数量
	private Timestamp date;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Cart(int id, Product product, User user, int quantity, Timestamp date) {
		super();
		this.id = id;
		this.product = product;
		this.user = user;
		this.quantity = quantity;
		this.date = date;
	}
	
}

