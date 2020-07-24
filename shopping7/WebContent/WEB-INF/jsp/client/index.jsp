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
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<%--<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index.css"/>--%>
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
		
		#img {
			height: 450px;
			background: #f5f5f5;
		}
		
		#c_img {
			height: 450px;
			text-align: center;
			position: relative;
			top: 2px;
		}
		#c_img ul li {
			list-style: none;
			
		}
		#con {
			background: #f5f5f5;
		}
		#c_con {
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
			border: 1px #ccc solid;
			clear: both;
		}
		#hot,#new {
			width: 100px;
			height: 50px;
			background: #F6F6F6;
		}
		#new {
			clear: both;
		}
		#hot ul li,#new ul li {
			list-style: none;
			height: 40px;
		}
		.pro {
			float: left;
			height: 340px;
			width: 220px;
			border: 1px #ccc solid;
			margin: 5px 14px
		}
		
		.pro:HOVER {
			border: 1px #4C8FBD solid;
		}
		
		.img {
			height: 220px;
			width: 220px;
			text-align: center;
		}
		
		.pro_con {
			height: 120px;
			width: 220px;
		}
		
		.s1 {
			font-size: 16px;
			color: 4C8FBD;
			font-weight: bold;
		}
		
		.s2 {
			color: #333;
		}
		
		.s3 {
			color: 4C8FBD;
			font-size: 14px;
		}
		
		#c{
			clear: both;
		}
		
		#copy {
			height: 30px;
			background: #4C8FBD;
		}
		
		#c_copy {
			text-align: center;
			color: #fff;
			font-family: arial;
			position: relative;
			top: 7px;
		}
	</style>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function() {
			//轮播图处理
			var index = 0;
			$("#c_img img").css("display","none").filter(":eq(" + (index++) + ")").fadeIn("slow");
			function change() {
				$("#c_img img").css("display","none").filter(":eq(" + index + ")").fadeIn("slow");
				index++;
				if(index >= $("#c_img img").size()) {
					index = 0;
				}
			}
			setInterval(change,3000);
		});
	</script>
  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
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
    <div id="img">
    	<div id="c_img">
    		<ul>
    			<li><img src="<%=request.getContextPath()%>/image/band01.png" width="1000px"/></li>
    			<li><img src="<%=request.getContextPath()%>/image/band02.png" width="1000px"/></li>
    			<li><img src="<%=request.getContextPath()%>/image/band03.png" width="1000px"/></li>
    			<li><img src="<%=request.getContextPath()%>/image/band04.png" width="1000px"/></li>
    			<li><img src="<%=request.getContextPath()%>/image/band05.png" width="1000px"/></li>
    		</ul>
    	</div>
    </div>
    <div id="con">
    	<div id="c_con">
    		<c:forEach items="${products }" var="product">
    			<div class="pro">
	    			<div class="img">
	    				<a href="<%=request.getContextPath() %>/product/${product.id }/item" target="${product.id }">
	    					<img alt="" src="<%=request.getContextPath()%>/image/${product.imgs[0].name }" height="220px">
	    				</a>
	    			</div>
	    			<div class="pro_con">
	    				<span class="s1">￥<fmt:formatNumber type="number" value="${product.price * product.discount }" ></fmt:formatNumber></span><br><br>
	    				<span class="s2">${product.name } &nbsp;&nbsp;${product.describe }</span><br><br>
	    				<span class="s3">${product.sales }</span><span class="s2">次购买</span>
	    			</div>
    			</div>
    		</c:forEach>
    		<div id="c"></div>
    	</div>
    </div>
    <div>
    	
    </div>
    <div id="copy">
    	<div id="c_copy">
    		&copy;版权所有2018-2019
    	</div>
    </div>
  </body>
</html>
