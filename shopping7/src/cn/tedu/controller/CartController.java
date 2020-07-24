package cn.tedu.controller;

import java.io.IOException;
import java.io.Writer;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.apache.regexp.internal.recompile;

import cn.tedu.model.Cart;
import cn.tedu.model.Product;
import cn.tedu.model.User;
import cn.tedu.service.IAddressService;
import cn.tedu.service.ICartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	private ICartService cartService;
	private IAddressService addressService;
	  @Resource
	public void setAddressService(IAddressService addressService) {
		this.addressService = addressService;
	}

	@Resource
	public void setCartService(ICartService cartService) {
		this.cartService = cartService;
	}
	
	//添加到购物车  
   @RequestMapping(value="/addCart",method=RequestMethod.POST)
	public void addCart(int id,int quantity,HttpSession session,HttpServletResponse resp){
       
		//  获取 登录用户  
		User user=(User)    session.getAttribute("loginUser"); 
		//判断用户是否登录  
		if(user==null){
			//通过session 保存当前商品的地址
			    session.setAttribute("URI", "product/"+id+"/item");
			    try {
					resp.sendRedirect("");
				} catch (IOException e) {
					e.printStackTrace();
				}
			    return;
		}
		else{
			//获取当前时间 
			Date d=new Date();
			//格式化  
			String fmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(d);
		
		     Timestamp date = Timestamp.valueOf(fmt);
		     //创建一件商品  
		     Product product=new Product();
		     product.setId(id);
		     //创建购物车对象  
		     Cart  cart=new Cart();
		     cart.setDate(date);
		     cart.setQuantity(quantity);
		     cart.setUser(user);
		     cart.setProduct(product);
		     //保存到购物车
		     cartService.add(cart);
		     //获取 用户购物车中商品的种类数   
		 int cartSize=      cartService.loadCartSize(user.getId());
		     session.setAttribute("cartSize", cartSize);
		       Writer out=null;
			try {
				out = resp.getWriter();
				out.write("yes");
			} catch (IOException e) {
				e.printStackTrace();
			}finally{
			    try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		       
		        
		    
		}
		
	}
   
   /**
    * 用户查询购物车信息   
    */
   @RequestMapping(value="/my_cart",method=RequestMethod.GET)
   public String myCart(Model model,HttpSession session){
	   //  获取登录用户  
	   User user= (User)  session.getAttribute("loginUser");
	   if(user==null){
		   return "redirect:/user/login";
	   }
	   else{
		   // 获取该用户所有的购物车条目   
		 List<Cart> carts=     cartService.listByUser(user.getId());
	        model.addAttribute("carts", carts);
	   
	   }
	   
	   return "client/user/my_cart";
   }
   /**
    * 在购物车删除一件商品的操作
    */
   @RequestMapping(value="/delete/{cartid}",method=RequestMethod.GET)
   public String delete(@PathVariable int cartid,HttpSession session){
	     cartService.delete(cartid);
	      User user=     (User) session.getAttribute("loginUser");
	         int cartSize = cartService.loadCartSize(user.getId());
	         session.setAttribute("cartSize", cartSize);
	         
	   return "redirect:/cart/my_cart";
   }
   /**
    * 删除多条购物车条目
    * @param cartids
    * @param session
    * @return
    */
   @RequestMapping(value="/delete",method=RequestMethod.POST)
   public String delete(int cartids[],HttpSession session){
	     for (int i = 0; i < cartids.length; i++) {
			cartService.delete(cartids[i]);
		}
	     User user=(User) session.getAttribute("loginUser");
         int cartSize = cartService.loadCartSize(user.getId());
         session.setAttribute("cartSize", cartSize);
	   return "redirect:/cart/my_cart";
   }
   /**
    * 修改购物车中商品的购买数量
    * @param cid
    * @param option
    * @param resp
    * @param session
    * @param model
    */
   @RequestMapping(value="updateQuantity",method=RequestMethod.PUT)
   public void updateQuantity(int cid,String option,HttpServletResponse resp,HttpSession session,Model model){
	 User user=(User)session.getAttribute("loginUser");
	   Cart cart=        cartService.load(cid); 
	   
	   if(option.equals("plus")){
		   cart.setQuantity(cart.getQuantity()+1);
	   }  else if(option.equals("minus")){
		   cart.setQuantity(cart.getQuantity()-1);
	   }
	   cartService.update(cart);
	      List<Cart> carts = cartService.listByUser(user.getId());
	        model.addAttribute("carts", carts);
	    	Writer out=null;
	     try {
			 out=   resp.getWriter();
			   out.write("yes");
		} catch (IOException e) {
			
			e.printStackTrace();
		}finally{
			try {
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

   }
  
   /**
    * 
    */
    @RequestMapping(value="/settlement",method=RequestMethod.POST)
   public String settlement(int cartids[],Model model,HttpSession session){
    	User user =(User)session.getAttribute("loginUser");
    	//新建集合 保存购物车的记录  
    	 List<Cart> carts=new ArrayList<Cart>();
    	 for (int i = 0; i < cartids.length; i++) {
			    Cart cart = cartService.load(cartids[i]);
			    //放入集合中  
			      carts.add(cart);
			    
		}
    	model.addAttribute("carts", carts);
    	//调用地址业务完成 查询 当前用户存在数据库 address表中已经用过的地址 并且放入  域中
    	//  List<Address> addresses=    addressService.listByUser(user.getId());
	   return "client/user/buy_now";
   }
}
