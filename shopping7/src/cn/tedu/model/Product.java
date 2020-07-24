package cn.tedu.model;

import java.util.List;

/**
 *   商品 是购物的核心  对商品的管理也是一样的      
 *     用于信息的管理     以及对应图片的 管理操作  创建商品的实体类   还要 创建图片类   
 *       由于  商品 和图片是一对多的关系  在查询一件商品的时候 需要获取所有图片  
 *       因此在商品类中要包含对图片集合的类型属性     图片类中 也包含 商品类型的素改一下 
 *       
 *         id  主键  
 *         name  商品名称  
 *         price  单价  
 *           sales 销量
 * @author aaaa
 *
 */
public class Product {
   private int id;
   private String name;
   private double price;
   private int sales;//销量
   private int inventory;//库存
   private String describe;//商品描述 
   private double discount;     //折扣
   private int status;
   private Category category;
   private List<Img> imgs;
public Product() {
	super();
	// TODO Auto-generated constructor stub
}
public Product(int id, String name, double price, int sales, int inventory, String describe, double discount,
		int status, Category category, List<Img> imgs) {
	super();
	this.id = id;
	this.name = name;
	this.price = price;
	this.sales = sales;
	this.inventory = inventory;
	this.describe = describe;
	this.discount = discount;
	this.status = status;
	this.category = category;
	this.imgs = imgs;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getSales() {
	return sales;
}
public void setSales(int sales) {
	this.sales = sales;
}
public int getInventory() {
	return inventory;
}
public void setInventory(int inventory) {
	this.inventory = inventory;
}
public String getDescribe() {
	return describe;
}
public void setDescribe(String describe) {
	this.describe = describe;
}
public double getDiscount() {
	return discount;
}
public void setDiscount(double discount) {
	this.discount = discount;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
public Category getCategory() {
	return category;
}
public void setCategory(Category category) {
	this.category = category;
}
public List<Img> getImgs() {
	return imgs;
}
public void setImgs(List<Img> imgs) {
	this.imgs = imgs;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((category == null) ? 0 : category.hashCode());
	result = prime * result + ((describe == null) ? 0 : describe.hashCode());
	long temp;
	temp = Double.doubleToLongBits(discount);
	result = prime * result + (int) (temp ^ (temp >>> 32));
	result = prime * result + id;
	result = prime * result + ((imgs == null) ? 0 : imgs.hashCode());
	result = prime * result + inventory;
	result = prime * result + ((name == null) ? 0 : name.hashCode());
	temp = Double.doubleToLongBits(price);
	result = prime * result + (int) (temp ^ (temp >>> 32));
	result = prime * result + sales;
	result = prime * result + status;
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
	Product other = (Product) obj;
	if (category == null) {
		if (other.category != null)
			return false;
	} else if (!category.equals(other.category))
		return false;
	if (describe == null) {
		if (other.describe != null)
			return false;
	} else if (!describe.equals(other.describe))
		return false;
	if (Double.doubleToLongBits(discount) != Double.doubleToLongBits(other.discount))
		return false;
	if (id != other.id)
		return false;
	if (imgs == null) {
		if (other.imgs != null)
			return false;
	} else if (!imgs.equals(other.imgs))
		return false;
	if (inventory != other.inventory)
		return false;
	if (name == null) {
		if (other.name != null)
			return false;
	} else if (!name.equals(other.name))
		return false;
	if (Double.doubleToLongBits(price) != Double.doubleToLongBits(other.price))
		return false;
	if (sales != other.sales)
		return false;
	if (status != other.status)
		return false;
	return true;
}
@Override
public String toString() {
	return "Product [id=" + id + ", name=" + name + ", price=" + price + ", sales=" + sales + ", inventory=" + inventory
			+ ", describe=" + describe + ", discount=" + discount + ", status=" + status + ", category=" + category
			+ ", imgs=" + imgs + "]";
}
   
   
   
}
