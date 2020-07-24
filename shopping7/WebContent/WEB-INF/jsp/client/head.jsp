<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		*{
			margin: 0px;
			padding: 0px;
			font-size: 12px;
		}
		
		#head {
			height: 40px;
			background: #F5F5F5;
		}
		
		#c_head {
			width: 1000px;
			height: 40px;
			position: relative;
			left: 50%;
			margin-left: -500px;
			color: #6C6C6C;
		}
		
		#c_head div {
			float: left;
		}
		
		#d1 {
			width: 400px;
			position: relative;
			font-family: arial;
			height: 40px
		}
		#d2 {
			width: 600px;
			position: relative;
			left: 100px;
			height: 40px;
		}
		#d1 li,#d2 li {
			list-style: none;
			height: 30px;
			float: left;
			position: relative;
			top: 12px;
			margin-left: 20px;
		}
		
		#c_head a:VISITED,#c_head a:LINK {
			color: #6C6C6C;
			text-decoration: none;
		}
		
		#c_head a:HOVER {
			color: #4C8FBD;
			font-weight: bold;
			text-decoration: underline;
		}
		.s {
			color: #4C8FBD;
		}
		
		
	</style>
  </head>
  
  <body>
    <div id="head">
    	<div id="c_head">
    		<div id="d1">
	    		<ul>
	    			<li><a href="index.html">欢迎访问</a></li>
	    			<c:if test="${loginUser eq null }">
		    			<li><a href="<%=request.getContextPath() %>/user/login" class="login" style="color:#4C8FBD;">请登录</a></li>
		    			<li><a href="<%=request.getContextPath() %>/user/register" class="register">免费注册</a></li>
		    		</c:if>
		    		<c:if test="${loginUser ne null }">
		    			<li><a href="<%=request.getContextPath() %>/user/my_shopping" class="user" style="color:#4C8FBD;">${loginUser.username }</a></li>
		    			<li><a href="<%=request.getContextPath() %>/user/logout" class="user">退出登录</a></li>
		    		</c:if>
	    		</ul>
    		</div>
    		<div id="d2">
    			<ul>
    				<li><a href="<%=request.getContextPath() %>/index.html">购物网首页</a></li>
    				<li><a href="<%=request.getContextPath() %>/user/my_shopping">我的购物网</a></li>
    				<li><a href="<%=request.getContextPath() %>/cart/my_cart"><img src="<%=request.getContextPath()%>/img/cart.png">购物车<span class="s">${cartSize }</span></a></li>
    				<li><a href="">商品分类</a></li>
    				<li><a href="">客户服务</a></li>
    			</ul>
    		</div>
    	</div>
    </div>
  </body>
</html>
