package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/others")
public class OthersController {
     
     @RequestMapping(value="/other",method=RequestMethod.GET)
 	public String Show(Model model){
 		return "admin/main/others/other";
 	}

}