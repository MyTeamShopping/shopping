package cn.tedu.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.tedu.model.Category;
import cn.tedu.model.Order;
import cn.tedu.service.IOrderService;
import cn.tedu.util.CodeUtil;

@Controller
@RequestMapping("/order")
public class OrderController {
   
	private IOrderService orderService;
	
     @Resource
	public void setorderService(IOrderService orderService) {
		this.orderService = orderService;
	}
     
     //订单列表
     @RequestMapping(value="/orders",method=RequestMethod.GET)
 	public String list(Model model){
            List<Order> orders = orderService.list();
            System.out.println(orders);
            model.addAttribute("orders",orders);
 		return "admin/main/order/list";
 	}
     
     //跳转到添加订单页面   
    @RequestMapping(value="/add",method=RequestMethod.GET)
      public String add(Model model){
    	    model.addAttribute(new Order());
    	    return "admin/main/order/add";
      }
    
    //添加订单
    @RequestMapping(value="/add",method=RequestMethod.POST)
    public String add(Order order){
        //List<Address> addresses = addressService.list();
        //model.addAttribute("addresses", addresses);
    	System.out.println("order");
    	  orderService.add(order);
    	  return "redirect:/order/orders";
    }
    
   //跳转到修改订单页面
    @RequestMapping(value="/{id}/update",method=RequestMethod.GET)
   public String update(@PathVariable int id,Model model){
	       Order order = orderService.load(id);
	       model.addAttribute(order);
	       return "admin/main/order/update";
   } 
    @RequestMapping(value="/update",method=RequestMethod.PUT)
    public String update(Order order){
       orderService.update(order);
 	   return "redirect:/order/orders";
    }
    
    //删除订单
    @RequestMapping(value="/{id}/delete",method=RequestMethod.DELETE)
   public String delete(@PathVariable int id){
	   orderService.delete(id);
	   return "redirect:/order/orders";
   }
    
     /**
      * 跳转到顶部
      * @return
      */
     @RequestMapping(value="/top")
     public String top(){
    	 return "admin/main/top";
     }
     @RequestMapping(value="/left")
     public String left(){
    	 return "admin/main/left";
     }
     @RequestMapping(value="/welcome")
     public String welcome(){
    	 return "admin/main/welcome";
     }
}
