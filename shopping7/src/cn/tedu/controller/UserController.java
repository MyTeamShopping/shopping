package cn.tedu.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.tedu.model.User;
import cn.tedu.service.ICartService;
import cn.tedu.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
 private     IUserService userService;
  private           ICartService cartService;
  @Resource
      public void setCartService(ICartService cartService) {
	this.cartService = cartService;
}
	@Resource
	public void setUserService(IUserService userService) {
	this.userService = userService;
}
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(){
		
		return "client/login";
	}
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String register(){
		
		return "client/register";
	}
	/**
	 * 完成用户的注册操作
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(User user){
		     userService.add(user);
		//注册成功之后跳转到login.jsp
		     return "redirect:/user/login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(String username,String password,HttpSession session){
		        User user = userService.login(username, password);
		        
		        session.setAttribute("loginUser", user);
	              //    获取session 中的uri  
		        
		        // 获取用户在购物车中商品的种类数  
		              int cartSize = cartService.loadCartSize(user.getId()); 
		              session.setAttribute("cartSize", cartSize);
		              String URI = (String) session.getAttribute("URI");
		           if(URI==null||URI.equals("")){
		        	   return "redirect:/index.html";
		           }
		           //商品详情页登录的   返回到商品的详情页
		           
		           else{
		        	   
		        	   return "redirect:/"+URI;
		           } 
	}
}
