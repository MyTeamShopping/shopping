<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'buy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
			font-size: 12px;
		}
		/************顶部样式************/
		#head {
			height: 50px;
		}
		#c_head {
			height: 50px;
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		#c_head li {
			list-style: none;
			height: 30px;
			position: relative;
			top: 9px;
		}
		#head_left {
			width: 499px;
			height: 50px;
		}
		#head_right {
			width: 499px;
			height: 50px;
		}
		#head_left,#head_right {
			float: left;
		}
		#head_left li {
			float: left;
		}
		#head_right li {
			float: right;
		}
		.head_left_li1 {
			width: 70px;
		}
		.head_left_li2 {
			width: 110px;
			text-align: center;
			border-left: 1px #808080 solid;
		}
		.head_left_li2 span {
			font-size: 17px;
			color: #1A1A1A;
			position: relative;
			top: 3px;
		}
		.head_left_li3 {
			width: 70px;
			border-left: 1px #808080 solid;
			text-align: center;
		}
		.head_left_li3 a {
			position: relative;
			top: 5px;
		}
		.head_left_li3 a:VISITED,.head_left_li3 a:LINK {
			text-decoration: none;
			color: #333;
		}
		.head_left_li3 a:HOVER {
			text-decoration: underline;
			color: #4C8FBD;
			font-weight: bold;
		}
		.head_left_li4 {
			width: 160px;
			text-align: center;
		}
		.head_left_li4 span {
			position: relative;
			top: 5px;
			color: #4C8FBD;
		}
		
		/************内容部分样式************/
		#con {
			background: #EFF0F1;
		}
		#c_con {
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		
		#con_up div {
			float: left;
		}
		.con_up_1 {
			width: 845px;
			height: 130px;
		}
		.con_up_1_li1 {
			height: 100px;
			width: 100px;
			text-align: center;
			position: relative;
			top: 15px;
			border: 1px #B3B3B3 solid;
		}
		.con_up_1_li2 {
			height: 100px;
			width: 740px;
			position: relative;
			top: 15px;
		}
		.con_up_1_li2 span {
			color: #333;
		}
		.con_up_1_li2 li {
			height: 25px;
			position: relative;
			left: 20px;
		}
		.con_up_1_li1,.con_up_1_li2 {
			float: left;
		}
		.con_up_1 li {
			list-style: none;
		}
		.con_up_2 {
			width: 150px;
			height: 130px;
		}
		.con_up_2_s1 {
			color: #4C8FBD;
			font-size: 18px;
			font-weight: bold;
			position: relative;
			top: 45px;
			left: 20px;
		}
		.con_up_2_s2 {
			position: relative;
			top: 45px;
			color: #333;
			left: 25px;
		}
		#con_down {
			background: #fff;
			border-top: 4px #B3B3B3 solid;
			border-bottom: 4px #B3B3B3 solid;
			clear: both;
		}
		#con_down li {
			list-style: none;
		}
		#con_down_li1 {
			position: relative;
			top: 25px;
			left: 20px;
			height: 60px;
			width: 950px;
			border: 4px #4C8FBD solid;
		}
		#con_down_li1 span,#con_down_li1 a {
			position: relative;
			top: 20px;
			color: #333;
		}
		#con_down_li1_s1 {
			font-size: 14px;
		}
		#con_down_li1_s3 {
			font-size: 14px;
			font-weight: bold;
		}
		#con_down_li1 a {
			position: relative;
			left: 70px
		}
		.con_down_li1_s3 {
			position: relative;
			left: 70px
		}
		#con_down_li1 a:VISITED,#con_down_li1 a:LINK {
			text-decoration: none;
			color: #4C8FBD;
		}
		#con_down_li1 a:HOVER {
			text-decoration: underline;
			font-weight: bold;
		}
		.con_down_li1_s2 {
			position: relative;
			left: 450px
		}
		#con_down_li2,#con_down_li3,#con_down_li4,#con_down_li5,#con_down_li6 {
			position: relative;
			top: 25px;
			left: 24px;
			height: 60px;
			width: 900px;
		}
		#con_down_li2 span,#con_down_li2 a {
			position: relative;
			top: 20px;
			color: #333;
		}
		#con_down_li2 a:VISITED,#con_down_li2 a:LINK {
			text-decoration: none;
			color: #4C8FBD;
		}
		#con_down_li2 a:HOVER {
			text-decoration: underline;
			font-weight: bold;
		}
		#con_down_li3 {
			background: url("/<%=request.getContextPath()%>/img/pay.png") no-repeat;
			background-position: 0px 45px;
		}
		#con_down_li3 span {
			position: relative;
			top: 45px;
			left: 20px;
		}
		#con_down_li4 span {
			font-size: 16px;
			position: relative;
			top: 45px;
			color: #333;
		}
		#con_down_li5 input {
			height: 30px;
			width: 260px;
			border: 1px #ccc solid;
			font-size: 20px;
			position: relative;
			top: 12px;
		}
		#con_down_li5 span {
			color: #f00;
			position: relative;
			top: 5px;
		}
		#con_down_li6 input {
			height: 30px;
			width: 100px;
			background: #4C8FBD;
			border-radius: 2px;
			border: 1px #4C8FBD solid;
			font-size: 16px;
			font-weight: bold;
			color: #fff;
			cursor: pointer;
		}
		/************版权部分样式************/
		#copy {
			height: 30px;
			background: #EFF0F1;
		}
		#c_copy {
			text-align: center;
			color: #333;
			font-family: arial;
			position: relative;
			top: 7px;
		}
	</style>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			var pwd = $("#pwd");
			var btn = $("#btn");
			var totalPrice = 0;
			$(".con_up_2_s1").each(function(){
				totalPrice = totalPrice + parseFloat($(this).html());
			});
			
			//获取个人账户余额
			var balance = $("#con_down_li1_s3").html();
			
			pwd.focus(function(){
				if(balance < totalPrice) {
					alert("您的账户余额不足，请先充值！");
				}
			});
			pwd.blur(function(){
				if(balance < totalPrice) {
					$(this).val("");
				}
			});
			btn.click(function(){
				if(pwd.val() == "") {
					alert("请输入支付密码");
				}
				else {
					$("#form").submit();
				}
			});
		});
	</script>
  </head>
  
  <body>
    <div id="head">
    	<div id="c_head">
    		<div id="head_left">
    			<ul>
    				<li class="head_left_li1"><img src="img/logo.png" height="30"></li>
    				<li class="head_left_li2"><span>我的收银台</span></li>
    			</ul>
    		</div>
    		<div id="head_right">
    			<ul>
    				<li class="head_left_li3"><a href="">客户服务</a></li>
    				<li class="head_left_li4"><span>支付账户：${loginUser.username }</span></li>
    			</ul>
    		</div>
    	</div>
    </div>
    <div id="con">
    	<div id="c_con">
    		<div id="con_up">
    			<c:forEach items="${order.orderProducts }" var="op">
	    			<div class="con_up_1">
	    				<ul>
	    					<li class="con_up_1_li1">
	    						<img src="<%=request.getContextPath() %>/image/${op.product.imgs[0].name }" height="100">
	    					</li>
	    					<li class="con_up_1_li2">
	    						<ul>
	    							<li></li>
	    							<li><span>${op.product.name }</span></li>
	    							<li><span>${op.product.describe }</span></li>
	    						</ul>
	    					</li>
	    				</ul>
	    			</div>
	    			<div class="con_up_2">
	    				<span class="con_up_2_s1">
	    					<fmt:formatNumber type="number" value="${op.product.price * op.product.discount * op.quantity }" groupingUsed="false"></fmt:formatNumber>
	    				</span>
	    				<span class="con_up_2_s2">元</span>
	    			</div>
    			</c:forEach>
    		</div>
    		<div id="con_down">
    			<form action="order/payment" method="post" id="form">
    				<input type="hidden" name="oid" value="${order.id }">
	    			<ul>
	    				<li id="con_down_li1">
	    					<span id="con_down_li1_s1">支付方式：<input type="radio" checked="checked">&nbsp;我的账户&nbsp;</span>
	    					<span>账户余额：</span>
	    					<span id="con_down_li1_s3" style="color: #4C8FBD;">${loginUser.balance }</span>
	    					<span>元</span>
	    					<a href="">网银支付</a>
	    					<span class="con_down_li1_s3">|</span>
	    					<a href="">信用卡支付</a>
	    					<span class="con_down_li1_s2">支付</span>
	    					<span class="con_down_li1_s2" style="color: #4C8FBD;font-weight: bold;font-size: 14px;">${order.price }</span>
	    					<span class="con_down_li1_s2">元</span>
	    				</li>
	    				<li id="con_down_li2">
	    					<c:if test="${loginUser.balance lt order.price }">
	    						<span>账户余额不足，请更换支付方式</span>
		    					<span>或</span>
		    					<a href="">充值</a>
	    					</c:if>
	    				</li>
	    				<li id="con_down_li3">
	    					<span>安全设置检测成功！请放心购买。</span>
	    				</li>
	    				<li id="con_down_li4">
	    					<span>输入密码完成支付</span>
	    				</li>
	    				<li id="con_down_li5">
	    					<input type="password" name="password" id="pwd" autocomplete="off">
	    					<span>${errormsg }</span>
	    				</li>
	    				<li id="con_down_li6">
	    					<input type="button" value="确认支付" id="btn">
	    				</li>
	    			</ul>
    			</form>
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
