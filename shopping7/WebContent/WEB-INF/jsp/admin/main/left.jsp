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
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
			font-size: 14px;
		}
		body {
			border: 1px #ddd solid;
		}
		div h3 {
			height: 40px;
			border-bottom: 1px #999 dotted;
			cursor: pointer;
			background: #f8f8f8;
			color: #2B7DBC;
		}
		#con {
			background: url("<%=request.getContextPath() %>/img/cont.png");
		}
		
		div h3 span {
			position: relative;
			top: 10px;
			left: 30px;
		}
		div ul {
			display: none;
		}
		
		div ul li {
			height: 40px;
			border-bottom: 1px #999 dotted;
			cursor: pointer;
			list-style: none;
		}
		
		div ul li a {
			position: relative;
			top: 10px;
			left: 40px;
			border-left: 1px #999 dotted;
		}
		
		div ul li a:VISITED,div ul li a:LINK {
			text-decoration: none;
			color: #616161;
		}
		
		div ul li a:HOVER {
			text-decoration: underline;
			color: #222;
			font-weight: bold;
			border-left: 1px #999 dotted;
		}
		div ul li:HOVER {
			background: #e8e8e8;
		}
		
		.h1 {
			background: url("<%=request.getContextPath() %>/img/user.png") 0 0 no-repeat #e8e8e8;
			background-position: 5px 9px;
		}
		.h2 {
			background: url("<%=request.getContextPath() %>/img/product.png") 0 0 no-repeat #e8e8e8;
			background-position: 5px 9px;
		}
		.h3 {
			background: url("<%=request.getContextPath() %>/img/desc.png") 0 0 no-repeat #e8e8e8;
			background-position: 5px 9px;
		}
		.h4 {
			background: url("<%=request.getContextPath() %>/img/order.png") 0 0 no-repeat #e8e8e8;
			background-position: 5px 9px;
		}
		.h5 {
			background: url("<%=request.getContextPath() %>/img/other.png") 0 0 no-repeat #e8e8e8;
			background-position: 5px 9px;
		}
	</style>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("h3").click(topic,topic);
			function topic() {
				$(this).next("ul").slideToggle(200);
				$(this).next("ul").siblings("ul").slideUp(200);
			}
		});
	</script>
  </head>
  
  <body>
    <div>
    	<h3 id="con"></h3>
    	<h3 class="h1"><span>管理员管理</span></h3>
    	<ul>
    		<c:if test="${loginAdmin.role eq 1 or loginAdmin.role eq 2 }">
    			<li><a href="admin/add" target="con">--用户添加</a></li>
    		</c:if>
    		<li><a href="admin/users" target="con">--用户列表</a></li>
    	</ul>
    	<h3 class="h2"><span>商品管理</span></h3>
    	<ul>
    		<li><a href="product/add" target="con">--商品添加</a></li>
    		<li><a href="product/products" target="con">--商品列表</a></li>
    	</ul>
    	<h3 class="h3"><span>类别管理</span></h3>
    	<ul>
    		<li><a href="category/add" target="con">--类别添加</a></li>
    		<li><a href="category/categories" target="con">--类别列表</a></li>
    	</ul>
    	<h3 class="h4"><span>订单管理</span></h3>
    	<ul>
    		<li><a href="order/orders" target="con">--订单列表</a></li>
    	</ul>
    	<h3 class="h5"><span>其他操作</span></h3>
    	<ul>
    		<li><a href="" target="con">--其他操作</a></li>
    	</ul>
    </div>
  </body>
</html>
