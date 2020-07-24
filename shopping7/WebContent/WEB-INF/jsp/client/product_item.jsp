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
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/item.css">
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
			background: url("${path}/img/logo.png") no-repeat;
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
		#con {
			margin-top: 20px;
		}
		#c_con {
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		#up {
			height: 450px;
			border: 1px #4C8FBD solid;
		}
		#up div {
			float: left;
		}
		
		#left {
			width: 400px;
			height: 450px;
			border-right: 1px #4C8FBD solid;
		}
		#left_u {
			margin-top: 5px;
			width: 400px;
			text-align: center;
		}
		#left_u img {
			display: none;
		}
		#left_d {
			width: 400px;
			text-align: center;
		}
		#left_d li {
			position: relative;
			top: 15px;
			width: 55px;
			height: 55px;
			float: left;
			list-style: none;
			cursor: pointer;
		}
		#left_d li:HOVER {
			border: 2px #4C8FBD solid;
		}
		#right {
			width: 590px;
			height: 450px;
		}
		#right table {
			margin-top: 10px;
			margin-bottom: 40px;
			margin-left: 5px;
		}
		.tr1 {
			height: 60px;
		}
		.tr2 {
			background: #FFF2E8;
			height: 45px;
		}
		.td1 {
			margin-top: 10px;
			font-size: 18px;
			color: #3C3C3C;
		}
		.td2 {
			color: #6c6c6c;
			font-size: 14px;
			width: 100px;
		}
		.td3 {
			font-size: 14px;
		}
		.td4 {
			font-size: 18px;
			color: #4C8FBD;
		}
		#minus,#plus {
			width: 20px;
			font-size: 14px;
			position: relative;
			top: 10px;
		}
		#quantity {
			position: relative;
			top: 10px;
			width: 50px;
			font-size: 18px;
			text-align: center;
		}
		#right ul li {
			list-style: none;
			height: 70px;
			width: 400px;
			margin-left: 10px;
		}
		.lis {
			position: relative;
			top: 10px;
			font-size: 14px;
			color: #6c6c6c;
		}
		#btn1,#btn2 {
			background: #4C8FBD;
			width: 120px;
			height: 40px;
			font-size: 18px;
			color: #fff;
			border-radius: 6px;
			margin-right: 5px;
			border: 1px #4C8FBD solid;
			cursor: pointer;
		}
		#down {
			clear: both;
			height: 80px;
			width: 500px;
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			//商品图片只显示一张大图
			$("#left_u img").css("display","none").filter(":eq(0)").show();
			//鼠标经过小图时,大图位置切换图片
			$("#left_d img").each(function(n) {
				$(this).mouseover(function(){
					$("#left_u img").css("display","none").filter(":eq(" + n + ")").show();
				});
			});
			
			var quantity = $("#quantity");
			var n = $("#n").html();
			//购买数量减事件处理
			$("#minus").click(function() {
				var num = parseInt(quantity.val());
				if(num > 1) {
					quantity.val(num - 1);
				}
			});
			//购买数量加事件处理
			$("#plus").click(function() {
				var num = parseInt(quantity.val());
				if(num < n) {
					quantity.val(num + 1);
				}
			});
			//购买数量光标失去焦点事件:判断输入的数字是否大于库存数量
			quantity.blur(function() {
				var num = parseInt(quantity.val());
				if(num > n) {
					alert("最大购买数量" + n + "个");
					$(this).val(n);
				}
			});
			
			var form = $("#form");
			//立即购买事件
			$("#btn1").click(function() {
				form.attr("action", "buy_now");
				form.submit();
			});
			//加入购物车事件
			$("#btn2").click(function(){
				$.ajax({
					type:"post",
					url:"cart/addCart",
					data:{id:${product.id}, quantity:$("#quantity").val()},
					success:function(data) {
						if(data == "yes") {
							alert("添加购物车成功");
							//页面强制刷新,用于显示或更改购物中心的商品记录数
							window.location.reload();
						}
						else {
							alert("添加购物车失败");
						}
					},
					error:function(data) {
						alert("您还没有登录,请先登录");
						//强制页面跳转
						window.location.href = "<%=request.getContextPath()%>/user/login";
					}
				});
			});
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
    <div id="con">
    	<div id="c_con">
    		<div id="up">
    			<div id="left">
    				<div id="left_u">
    					<c:forEach items="${product.imgs }" var="img">
    						<img src="<%=request.getContextPath()%>/image/${img.name}" height="360px"/>
    					</c:forEach>
    				</div>
    				<div id="left_d">
    					<ul>
	    					<c:forEach items="${product.imgs }" var="img">
	    						<li><img src="<%=request.getContextPath()%>/image/${img.name}" height="55px"/></li>
	    					</c:forEach>
    					</ul>
    				</div>
    			</div>
    			<div id="right">
    				<table width="580" cellpadding="0" cellspacing="0">
    					<tr class="tr1">
    						<td colspan="2" class="td1">${product.name }&nbsp;${product.describe }</td>
    					</tr>
    					<tr class="tr2">
    						<td class="td2">&nbsp;&nbsp;价格</td>
    						<td class="td3">￥<del class="td3">&nbsp;${product.price }</del></td>
    					</tr>
    					<tr class="tr2">
    						<td class="td2">&nbsp;&nbsp;优惠价</td>
    						<td class="td4">￥&nbsp;<fmt:formatNumber type="number" value="${product.price * product.discount }" ></fmt:formatNumber></td>
    					</tr>
    					<tr class="tr2">
    						<td class="td2">&nbsp;&nbsp;销量</td>
    						<td class="td3">${product.sales }</td>
    					</tr>
    				</table>
    				<form method="post" id="form">
	    				<input type="hidden" name="id" value="${product.id }">
	    				<ul>
	    					<li>
	    						<span class="lis">购买数量</span>
	    						<input type="button" value="-" id="minus">
	    						<input type="text" value="1" name="quantity" id="quantity">
	    						<input type="button" value="+" id="plus">
	    						<span class="lis">件(库存</span><span class="lis" id="n">${product.inventory }</span><span class="lis">件)</span>
	    					</li>
	    					<li>
	    						<input type="button" value="立即购买" id="btn1">
	    						<input type="button" value="加入购物车" id="btn2">
	    					</li>
	    				</ul>
	    			</form>
    			</div>
    		</div>
    		<div id="down">
    			
    		</div>
    	</div>
    </div>
    <div id="copy">
    	<div id="c_copy">
    		&copy;版权所有2018-2019
    	</div>
    </div>
  </body>
</html>
