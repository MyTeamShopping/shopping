<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'my_shopping.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		#nav {
			height: 100px;
			border-bottom: 3px #4C8FBD solid;
			margin-bottom: 1px;
		}
		#c_nav {
			height: 100px;
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		#c_nav div {
			float: left;
		}
		
		#logo {
			height: 59px;
			width: 117px;
			background: url("<%=request.getContextPath()%>/img/logo.png") no-repeat;
			position: relative;
			top: 20px;
			left: 50px;
		}
		#search {
			width: 700px;
			position: relative;
			left:150px; 
		}
		#in {
			height: 40px;
			width: 500px;
			position: relative;
			top: 27px;
			border-radius: 6px;
			border: 1px #DBDBDB solid;
			font-size: 20px;
		}
		#su {
			height: 40px;
			width: 120px;
			background: #4C8FBD;
			font-size: 18px;
			color: #fff;
			font-weight: bold;
			position: relative;
			top: 27px;
			border-radius: 6px;
			border: 1px #4C8FBD solid;
			cursor: pointer;
		}
		/***************内容部分样式***************/
		#con {
			
		}
		#c_con {
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		#left {
			width: 150px;
		}
		#right {
			width: 845px;
			position: relative;
			top: 10px;
		}
		#left, #right {
			float: left;
		}
		#left ul li {
			list-style: none;
			height: 40px;
		}
		#left span {
			font-size: 16px;
			color: #4C8FBD;
		}
		#left span, #left a {
			position: relative;
			top: 10px;
		}
		#left a:VISITED, #left a:LINK {
			text-decoration: none;
			color: #333;
		}
		#left a:HOVER {
			text-decoration: underline;
			color: #4C8FBD;
		}
		#right_d1 {
			height: 60px;
			background: #F5F8FA;
			border: 1px #E4EAEE solid;
		}
		#right_d1 span {
			font-size: 14px;
			position: relative;
			top: 20px;
			left: 30px;
		}
		#right_d2 {
			height: 50px;
			border-bottom: 1px #E4EAEE solid;
			border-left: 1px #E4EAEE solid;
			border-right: 1px #E4EAEE solid;
		}
		#right_d2 a:VISITED, #right_d2 a:LINK {
			text-decoration: none;
			font-size: 14px;
			color: #4B4B4B;
		}
		#right_d2 a:HOVER {
			text-decoration: underline;
			font-size: 14px;
			color: #4C8FBD;
			font-weight: bold;
		}
		#right_d2 li {
			list-style: none;
			float: left;
			width: 130px;
			text-align: center;
			position: relative;
			top: 15px;
		}
		 .right_d2_li {
		 	border-right: 1px #E4EAEE solid;
		 }
		#right_d2 li span {
			color: #4C8FBD;
		}
		#right_d3 {
			clear: both;
		}
	</style>
  </head>
  
  <body>
    <jsp:include page="../head.jsp"></jsp:include>
    <div id="nav">
    	<div id="c_nav">
    		<div id="logo">
    			
    		</div>
    		<div id="search">
		    	<form action="index.html" method="post">
		    		<!-- autocomplete="off"禁用文本输入框的历史记录 -->
		    		<input type="text" name="name" id="in" autocomplete="off">
		    		<input type="submit" value="搜&nbsp;索" id="su">
		    	</form>
	    	</div>
    	</div>
    </div>
    <div id="con">
    	<div id="c_con">
    		<div id="left">
    			<ul>
    				<li><span>全部功能</span></li>
    				<li><a href="cart/my_cart">我的购物车</a></li>
    				<li><a href="order/my_order">已买到的宝贝</a></li>
    				<li><a href="">我的账户</a></li>
    				<li><a href="">我的收获地址</a></li>
    				<li><a href="">账户设置</a></li>
    			</ul>
    		</div>
    		<div id="right">
    			<div id="right_d1">
    				<span>我的全部订单</span>
    			</div>
    			<div id="right_d2">
    				<ul>
    					<li class="right_d2_li"><a href="order/my_order/0">所有订单</a></li>
    					<li class="right_d2_li"><a href="order/my_order/1">待付款</a>&nbsp;<span>${waitPay }</span></li>
    					<li class="right_d2_li"><a href="order/my_order/2">待发货</a>&nbsp;<span>${waitSend }</span></li>
    					<li class="right_d2_li"><a href="order/my_order/3">待收获</a>&nbsp;<span>${waitConfirm }</span></li>
    					<li class="right_d2_li"><a href="order/my_order/4">退款中</a>&nbsp;<span>${refund }</span></li>
    					<li><a href="order/my_order/5">退款完成</a>&nbsp;<span>${refundSuccess }</span></li>
    				</ul>
    			</div>
    			<div id="right_d3"></div>
    		</div>
    	</div>
    </div>
  </body>
</html>
