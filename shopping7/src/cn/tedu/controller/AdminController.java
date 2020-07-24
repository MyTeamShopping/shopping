package cn.tedu.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.apache.regexp.internal.recompile;

import cn.tedu.model.Admin;
import cn.tedu.service.IAdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
   
	private IAdminService adminService;
     @Resource
	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}
   //跳转到登录页面
      @RequestMapping(value="login",method=RequestMethod.GET)
      public String login(){
    	  return "admin/login";
      }
     @RequestMapping(value="/login",method=RequestMethod.POST)
	  public String login(String username,String password,HttpSession session){
		     Admin admin = adminService.login(username, password);
	    session.setAttribute("loginAdmin", admin);
	    return "admin/main/main";
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
