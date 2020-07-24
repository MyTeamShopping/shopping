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
		/************订单部分样式***********/
		#right_d3 {
			clear: both;
			margin-top: 20px;
		}
		#right_d3_head, .right_d3_con {
			height: 40px;
			background: #F5F5F5;
			border: 1px #E4EAEE solid;
		}
		#right_d3_head ul li, .right_d3_con ul li, .right_d3_pro_right ul li {
			list-style: none;
			float: left;
			text-align: center;
		}
		#right_d3_head ul li span, .right_d3_con ul li span, .right_d3_con ul li a {
			position: relative;
			top: 12px;
			color: #3C3C3C;
		}
		.right_d3_li1 {
			width: 330px;
		}
		.right_d3_li2, .right_d3_li3 {
			width: 80px;
		}
		.right_d3_li4, .right_d3_li6 {
			width: 120px;
		}
		.right_d3_li5 {
			width: 110px;
		}
		.right_d3_con {
			margin-top: 10px;
		}
		.right_d3_pro {
			border-bottom: 1px #E4EAEE solid;
			border-left: 1px #E4EAEE solid;
			border-right: 1px #E4EAEE solid;
		}
		.right_d3_pro table td {
			height: 110px;
		}
		.right_d3_pro_td1 {
			width: 330px;
		}
		.tr_li1 {
			width: 80px;
			border: 1px #E4EAEE solid;
			text-align: center;
			margin-left: 10px;
		}
		.tr_li2 {
			width: 200px;
			margin-left: 10px;
			margin-top: 20px;
		}
		.right_d3_pro_td2, .right_d3_pro_td3 {
			width: 80px;
			text-align: center;
		}
		.right_d3_pro_td4, .right_d3_pro_td6 {
			width: 120px;
			text-align: center;
			border-left: 1px #E4EAEE solid;
		}
		.right_d3_pro_td5 {
			width: 110px;
			text-align: center;
			border-left: 1px #E4EAEE solid;
		}
		.right_d3_pro_td1 ul li {
			list-style: none;
			float: left;
		}
		.right_d3_pro_td2 ul li {
			list-style: none;
		}
		.right_d3_pro_td1 a:VISITED, .right_d3_pro_td1 a:LINK {
			text-decoration: none;
			color: #3C3C3C;
		}
		.right_d3_pro_td1 a:HOVER {
			text-decoration: underline;
			color: #4C8FBD;
		}
		.right_d3_pro_td2_s1 {
			color: #9C9C9C;
		}
		.right_d3_pro_td2_s2 {
			color: #3C3C3C;
		}
		.right_d3_pro_td3 span, .right_d3_pro_td5 span {
			color: #3C3C3C;
		}
		.right_d3_pro_td4 span {
			font-size: 14px;
			font-weight: bold;
			color: #4C8FBD;
		}
		.right_d3_pro_td6 a:VISITED, .right_d3_pro_td6 a:LINK {
			text-decoration: none;
			color: #3C3C3C;
		}
		.right_d3_pro_td6 a:HOVER {
			text-decoration: underline;
			color: #4C8FBD;
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
    			<div id="right_d3">
    				<div id="right_d3_head">
    					<ul>
    						<li class="right_d3_li1"><span>商品信息</span></li>
    						<li class="right_d3_li2"><span>单价</span></li>
    						<li class="right_d3_li3"><span>数量</span></li>
    						<li class="right_d3_li4"><span>实付款</span></li>
    						<li class="right_d3_li5"><span>交易状态</span></li>
    						<li class="right_d3_li6"><span>交易操作</span></li>
    					</ul>
    				</div>
    				<c:forEach items="${orders }" var="order">
    					<div class="right_d3_con">
    						<ul>
    							<li class="right_d3_li1"><span>${order.date }</span></li>
    							<li class="right_d3_li2"><span>&nbsp;</span></li>
    							<li class="right_d3_li3"><span>&nbsp;</span></li>
    							<li class="right_d3_li4"><span>&nbsp;</span></li>
    							<li class="right_d3_li5"><span>&nbsp;</span></li>
    							<li class="right_d3_li6"><a href="">删除订单</a></li>
    						</ul>
    					</div>
    					<div class="right_d3_pro">
   							<c:forEach items="${order.orderProducts }" var="orderProduct" varStatus="i">
    							<table width="845" cellpadding="0" cellspacing="0">
    								<tr>
    									<td class="right_d3_pro_td1">
    										<ul>
    											<li class="tr_li1"><a href=""><img src="<%=request.getContextPath()%>/image/${orderProduct.product.imgs[0].name}" height="80px"></a></li>
	    										<li class="tr_li2"><a href="">${orderProduct.product.name }${orderProduct.product.describe }</a></li>
    										</ul>
    									</td>
    									<td class="right_d3_pro_td2">
    										<ul>
    											<li><span class="right_d3_pro_td2_s1"><del>￥${orderProduct.product.price }</del></span></li>
    											<li><span class="right_d3_pro_td2_s2">￥<fmt:formatNumber type="number" value="${orderProduct.product.price * orderProduct.product.discount }"></fmt:formatNumber></span></li>
    										</ul>
    									</td>
    									<td class="right_d3_pro_td3">
    										<span>${orderProduct.quantity }</span>
    									</td>
    									<td class="right_d3_pro_td4">
    										<c:if test="${i.index eq 0 }">
    											<span>￥${order.price }</span>
    										</c:if>
    									</td>
    									<td class="right_d3_pro_td5">
    										<c:if test="${i.index eq 0 }">
    											<c:if test="${order.status eq 1 }">
    												<span style="color: #f00">未付款</span>
    											</c:if>
    											<c:if test="${order.status eq 2 }">
    												<span>等待发货</span>
    											</c:if>
    											<c:if test="${order.status eq 3 }">
    												<span>卖家已发货</span>
    											</c:if>
    											<c:if test="${order.status eq 4 }">
    												<span>退款处理中</span>
    											</c:if>
    											<c:if test="${order.status eq 5 }">
    												<span>卖家已退款</span>
    											</c:if>
    											<c:if test="${order.status eq 6 }">
    												<span>订单完成</span>
    											</c:if>
    											<c:if test="${order.status eq 7 }">
    												<span>交易关闭</span>
    											</c:if>
    										</c:if>
    									</td>
    									<td class="right_d3_pro_td6">
    										<c:if test="${i.index eq 0 }">
    											<c:if test="${order.status eq 1 }">
    												<a href="">立即付款</a><br><br>
    												<a href="">取消订单</a>
    											</c:if>
    											<c:if test="${order.status eq 3 }">
    												<a href="">确认收货</a><br><br>
    												<a href="">申请退款</a>
    											</c:if>
    											<c:if test="${order.status eq 5 }">
    												<a href="">确认退款</a>
    											</c:if>
    										</c:if>
    									</td>
    								</tr>
    							</table>
    						</c:forEach>
    					</div>
    				</c:forEach>
    			</div>
    		</div>
    	</div>
    </div>
  </body>
</html>
