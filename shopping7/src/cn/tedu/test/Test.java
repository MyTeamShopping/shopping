package cn.tedu.test;

/**
 * 购物车  看见一件商品 我们不一定会立刻购买    添加到购物车的操作 继续去浏览其他的商品  
 * 等合适的时候 再去购物车进行 结算       对购物车 也可以 添加商品 删除    统一下单      
 * 能做到跟踪客户所选的上  记录下所选的商品 还能随时更新   可以支付购买   
 *    购物车的设计  方法有很多   一般的购物网站 专门创建一张购物车表     
 *      有些网站  使用session和cookie来存放        
 *      本项目  采用的是数据库表 来存放购物车信息      
 * 
 * 在商品详情页面  点击添加到购物车   按钮之后  跳转到添加购物车具体的操作方法  
 * 
 */

import cn.tedu.util.CodeUtil;

public class Test {
public static void main(String[] args) {
   
	String password="123456";
	  System.out.println(CodeUtil.getMD5Encoding(password));

}
}
