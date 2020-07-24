package cn.tedu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.tedu.model.Product;
import cn.tedu.service.IproductService;

@Controller
public class IndexController {
     private IproductService productService;
   @Resource
	public void setProductService(IproductService productService) {
		this.productService = productService;
	}
	@RequestMapping(value="/index.html",method=RequestMethod.GET)
     public String index(Model model){
    	   //查询已经上架的商品        
		       List<Product> products = productService.listAllProduct();
    	 model.addAttribute("products", products);
    	 return "client/index";
     }
	
}
