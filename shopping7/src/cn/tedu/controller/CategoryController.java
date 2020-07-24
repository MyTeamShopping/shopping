package cn.tedu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.org.apache.regexp.internal.recompile;

/**
 * GET 查询  
 * POST 添加     
 * DELETE 删除  
 * PUT 修改 
 */
import cn.tedu.model.Category;
import cn.tedu.service.ICategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
       private ICategoryService categoryService;
    @Resource
	public void setCategoryService(ICategoryService categoryService) {
		this.categoryService = categoryService;
	}
     //跳转到添加页面   
    @RequestMapping(value="/add",method=RequestMethod.GET)
      public String add(Model model){
    	    model.addAttribute(new Category());
    	    return "admin/main/category/add";
      }
    @RequestMapping(value="/add",method=RequestMethod.POST)
    public String add(Category category){
    	  categoryService.add(category);
    	  //跳转到    categories  
    	  return "redirect:/category/categories";
    }
    //获取商品类别列表的方法  
    @RequestMapping(value="/categories",method=RequestMethod.GET)
    public  String list(Model model){
    	  List<Category> categories = categoryService.list();
    	  model.addAttribute("categories", categories);
    	  return "admin/main/category/list";
    }
        @RequestMapping(value="/{id}/delete",method=RequestMethod.DELETE)
       public String delete(@PathVariable int id){
    	   categoryService.delete(id);
    	   return "redirect:/category/categories";
       }
        /**
         * 跳转到修改类别页面  
         * 
         */
        @RequestMapping(value="/{id}/update",method=RequestMethod.GET)
       public String update(@PathVariable int id,Model model){
    	     Category category = categoryService.load(id);
    	       model.addAttribute(category);
    	       return "admin/main/category/update";
       } 
        @RequestMapping(value="/update",method=RequestMethod.PUT)
        public String update(Category category){
        	categoryService.update(category);
     	   return "redirect:/category/categories";
        }
}
