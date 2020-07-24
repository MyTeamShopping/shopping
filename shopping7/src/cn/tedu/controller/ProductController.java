package cn.tedu.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import cn.tedu.model.Category;
import cn.tedu.model.Img;
import cn.tedu.model.Product;
import cn.tedu.service.ICategoryService;
import cn.tedu.service.IproductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	private IproductService productService;
	  private ICategoryService categoryService;
	  //创建IImgService 
	  @Resource
	public void setCagegoryService(ICategoryService cagegoryService) {
		this.categoryService = cagegoryService;
	}
	@Resource
	public void setProductService(IproductService productService) {
		this.productService = productService;
	}
  @RequestMapping(value="/products",method=RequestMethod.GET)
	public String list(Model model){
           List<Product> products = productService.list();
           model.addAttribute("products",products);
		return "admin/main/product/list";
	}
  /**
   * 跳转到add.jsp 页面   同时要做一个查询 所有类别的操作  
   * 
   */
  @RequestMapping(value="/add",method=RequestMethod.GET)
    public String add(Model model){
    	  //获取所有商品类型   
	        List<Category> categories = categoryService.list();
	        model.addAttribute("categories", categories);
	        model.addAttribute(new Product());
    	return "admin/main/product/add";
    }
  @RequestMapping(value="/add",method=RequestMethod.POST)
  public String add(Product product,Integer cid,MultipartFile files[],HttpServletRequest req){
	      Category category = categoryService.load(cid);
	      product.setCategory(category);
	      product.setSales(0);//新添加的商品销量0
	      product.setStatus(1);//新添加的商品为上架状态   
	      productService.add(product);
	      //获取商品图片上传的位置  
	        String path = req.getServletContext().getRealPath("/image");
	        
	      //判断一下  是否选择了文件  
	        if(files!=null){
	        	for (MultipartFile file : files) {
					//获取图片名称  
	        		   String fileName = file.getOriginalFilename();
	        		   //创建一个文件   
	        		   File f=new File(path+"/"+fileName);
	        		   try {
						FileUtils.copyInputStreamToFile(file.getInputStream(), f);
					} catch (IOException e) {
						e.printStackTrace();
					}
	        		   //创建图片对象     
	        		   Img img=new Img();
	        		   img.setName(fileName);
	        		   img.setProduct(product);
	        		   //保存图片   图片业务层 add()
	        		   
				}
	        }
	  
	  return "redirect:/product/products";
  }
  /**
   * 前台页面 显示商品的详细信息的操作   
   * 
   */
  
  @RequestMapping(value="/{id}/item",method=RequestMethod.GET)
  public String item(@PathVariable int id,Model model){
	    Product product = productService.load(id);
	    model.addAttribute(product);
	  return "client/product_item";
  }
}
