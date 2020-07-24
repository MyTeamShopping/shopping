package cn.tedu.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.tedu.model.Admin;
import cn.tedu.service.IAdminService;
import cn.tedu.util.CodeUtil;

@Controller
@RequestMapping("/admin")
public class AdminController {
   
	private IAdminService adminService;
	
     @Resource
	public void setAdminService(IAdminService adminService) {
		this.adminService = adminService;
	}
     
     //用户列表
     @RequestMapping(value="/users",method=RequestMethod.GET)
 	public String list(Model model){
            List<Admin> admins = adminService.list();
            model.addAttribute("admins",admins);
 		return "admin/main/admin/list";
 	}
     
     //跳转到添加页面   
    @RequestMapping(value="/add",method=RequestMethod.GET)
      public String add(Model model){
    	    model.addAttribute(new Admin());
    	    return "admin/main/admin/add";
      }
    
    //添加用户
    @RequestMapping(value="/add",method=RequestMethod.POST)
    public String add(Admin admin){
    	  String password=CodeUtil.getMD5Encoding(admin.getPassword());
    	  admin.setPassword(password);
    	  adminService.add(admin);
    	  return "redirect:/admin/users";
    }
    
   //跳转到修改用户页面
    @RequestMapping(value="/{id}/update",method=RequestMethod.GET)
   public String update(@PathVariable int id,Model model){
	       Admin admin = adminService.load(id);
	       model.addAttribute(admin);
	       return "admin/main/admin/update";
   } 
    @RequestMapping(value="/update",method=RequestMethod.PUT)
    public String update(Admin admin){
  	   String password=CodeUtil.getMD5Encoding(admin.getPassword());
  	   admin.setPassword(password);
       adminService.update(admin);
 	   return "redirect:/admin/users";
    }
    
    //删除管理员
    @RequestMapping(value="/{id}/delete",method=RequestMethod.DELETE)
   public String delete(@PathVariable int id){
	   adminService.delete(id);
	   return "redirect:/admin/users";
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
