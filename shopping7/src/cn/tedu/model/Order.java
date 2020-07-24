package cn.tedu.model;

import java.sql.Date;

public class Order {
      private int id;
      private double price;
      private int status;
      private int isdel;
      private Date date;
      private int address;
      private int user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getIsdel() {
		return isdel;
	}
	public void setIsdel(int isdel) {
		this.isdel = isdel;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + address;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + id;
		result = prime * result + isdel;
		long temp;
		temp = Double.doubleToLongBits(price);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + status;
		result = prime * result + user;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Order other = (Order) obj;
		if (address != other.address)
			return false;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (id != other.id)
			return false;
		if (isdel != other.isdel)
			return false;
		if (Double.doubleToLongBits(price) != Double.doubleToLongBits(other.price))
			return false;
		if (status != other.status)
			return false;
		if (user != other.user)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", price=" + price + ", status=" + status + ", isdel=" + isdel + ", date=" + date
				+ ", address=" + address + ", user=" + user + "]";
	}
	public Order(int id, double price, int status, int isdel, Date date, int address, int user) {
		super();
		this.id = id;
		this.price = price;
		this.status = status;
		this.isdel = isdel;
		this.date = date;
		this.address = address;
		this.user = user;
	}
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}
      
}
