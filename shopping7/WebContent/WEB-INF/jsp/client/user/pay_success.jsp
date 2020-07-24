<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'promsg.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		/*****************logo及搜索位置样式******************/
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
			background: url("/shopping/img/logo.png") no-repeat;
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
			top: 28px;
			border-radius: 6px;
			border: 1px #4C8FBD solid;
			cursor: pointer;
		}
		/*****************内容位置样式******************/
		#c_con {
			height: 500px;
			width: 1000px;
			position: relative;
			top: 10px;
			left: 50%;
			margin-left: -500px;
			border: 1px #D4D4D4 solid;
		}
		#c_con li {
			list-style: none;
		}
		#c_con_d1 {
			width: 1000px;
			height: 60px;
			background: #ECFFDC;
		}
		#c_con_d1 li {
			height: 60px;
			background: url("<%=request.getContextPath()%>/img/pay_success.png") no-repeat;
			background-position: 30px 12px;
		}
		#c_con_d1 li span {
			font-size: 16px;
			position: relative;
			top: 17px;
			left: 75px;
			font-weight: bold;
		}
		#c_con_d2 {
			width: 1000px;
			height: 140px;
		}
		#c_con_d2 li {
			height: 45px;
		}
		#c_con_d2 span, #c_con_d2 a {
			position: relative;
			top: 17px;
			left: 75px;
			color: #333;
		}
		.c_con_d2_s {
			color: #4C8FBD;
			font-weight: bold;
		}
		#c_con_d2 a:VISITED, #c_con_d2 a:LINK {
			text-decoration: none;
			color: #4C8FBD;
		}
		#c_con_d2 a:HOVER {
			text-decoration: underline;
		}
		#c_con_d3 {
			width: 930px;
			height: 75px;
			position: relative;
			left: 50%;
			margin-left: -465px;
			border-top: 1px #D4D4D4 dotted;
			border-bottom: 1px #D4D4D4 dotted;
		}
		#c_con_d3 span {
			position: relative;
			top: 27px;
			left: 40px;
		}
		#copy {
			height: 30px;
			background: #4C8FBD;
			margin-top: 20px;
		}
		#c_copy {
			text-align: center;
			color: #fff;
			font-family: arial;
			position: relative;
			top: 7px;
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
		    		<input type="text" name="name" id="in" autocomplete="off">
		    		<input type="submit" value="搜&nbsp;索" id="su">
		    	</form>
	    	</div>
    	</div>
    </div>
    <div id="con">
    	<div id="c_con">
    		<div id="c_con_d1">
    			<ul>
    				<li><span>您已成功付款</span></li>
    			</ul>
    		</div>
    		<div id="c_con_d2">
    			<ul>
    				<li><span>收获地址：${order.address.base }&nbsp;${order.address.place }&nbsp;&nbsp;${order.address.name }&nbsp;&nbsp;${order.address.phone }</span></li>
    				<li><span>实付款：</span><span class="c_con_d2_s" style="color:#4C8FBD;">￥</span><span class="c_con_d2_s" style="color:#4C8FBD;">${order.price }</span></li>
    				<li><span>您可以&nbsp;&nbsp;&nbsp;&nbsp;</span><a href="order/my_order/0">查看已买到的宝贝</a></li>
    			</ul>
    		</div>
    		<div id="c_con_d3">
    			<ul>
    				<li><span>我们正在为您安排发货</span></li>
    			</ul>
    		</div>
    	</div>
    </div>
  </body>
</html>
