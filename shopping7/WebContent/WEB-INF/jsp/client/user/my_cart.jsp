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
			background: url("<%=request.getContextPath()%>/img/logo.png") no-repeat;
			position: relative;
			top: 20px;
			left: 50px;
		}
		#logo2 {
			width: 100px;
			height: 60px;
			font-size: 20px;
			position: relative;
			top: 35px;
			left: 70px;
			color: #3C3C72;
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
		#con {
			margin-top: 20px;
			margin-bottom: 20px;
		}
		#c_con {
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		#c_con_head {
			width: 1000px;
			height: 30px;
			text-align: right;
			border-bottom: 3px #E6E6E6 solid;
		}
		#c_con_head_s1,#c_con_head_s2 {
			color: 4C8FBD;
			font-weight: bold;
		}
		#c_con_head input {
			width: 55px;
			height: 25px;
			background: #aaa;
			color: #fff;
			border-radius: 3px;
			border: 1px #fff solid;
			cursor: text;
		}
		#c_con_table table {
			margin-top: 20px;
		}
		#c_con_table table td {
			text-align: center;
			color: #3C3C3C;
		}
		.tr1 {
			height: 40px;
			
		}
		.tr2 {
			height: 130px;
			background: #FCFCFC;
		}
		.td1 {
			width: 70px;
		}
		.td2 {
			width: 450px;
		}
		.td3,.td4,.td5,.td6 {
			width: 120px;
		}
		.td2 ul li {
			float: left;
			list-style: none;
		}
		.tr2_li1 {
			height: 80px;
			width: 82px;
			border: 1px #ccc solid;
		}
		.tr2_li2 {
			height: 80px;
			width: 220px;
			text-align: left;
			margin-left: 10px;
		}
		.tr2_li2 a:VISITED, .tr2_li2 a:LINK, .td6 a:VISITED, .td6 a:LINK,#c_con_down_d1 a:VISITED, #c_con_down_d1 a:LINK {
			color: #3C3C3C;
			text-decoration: none;
		}
		.tr2_li2 a:HOVER,.td6 a:HOVER, #c_con_down_d1 a:HOVER {
			text-decoration: underline;
			color: #4C8FBD;
			cursor: pointer;
		}
		.price,.money {
			font-weight: bold;
		}
		/*商品数量样式*/
		.minus, .plus {
			width: 20px;
			height: 25px;
			background: #F0F0F0;
			cursor: pointer;
			border: 1px #F0F0F0 solid;
		}
		.quantity {
			width: 40px;
			height: 25px;
			text-align: center;
		}
		/*******************/
		#c_con_down {
			height: 50px;
			width: 1000px;
			background: #E5E5E5;
			position: fixed;
			bottom: -1px;
    		z-index: 99;
		}
		#c_con_down div {
			float: left;
		}
		#c_con_down_d1 {
			height: 50px;
			width: 400px;
		}
		#c_con_down_d1 span, #c_con_down_d1 input, #c_con_down_d1 a {
			position: relative;
			top: 17px;
			left: 12px;
		}
		#c_con_down_d2 {
			height: 50px;
			width: 400px;
			text-align: right;
		}
		#c_con_down_d2 input {
			background: #aaa;
			color: #fff;
			border-radius: 3px;
			border: 1px #E5E5E5 solid;
			width: 120px;
			height: 50px;
			font-size: 20px;
			cursor: text;
		}
		#c_con_down_d2 span, #c_con_down_d2 input {
			position: relative;
			left: 200px;
		}
		#c_con_down_d2_s1 {
			font-size: 14px;
			color: #4C8FBD;
			font-weight: bold;
		}
		#c_con_down_d2_s2 {
			font-size: 18px;
			color: #4C8FBD;
			font-weight: bold;
		}
		/*****************全选样式******************/
		input[type="checkbox"] {
			cursor: pointer;
		}
		/*****************底部样式******************/
		#copy {
			clear: both;
			height: 30px;
			margin-top: 30px;
		}
		#c_copy {
			text-align: center;
			color: #fff;
			font-family: arial;
			position: relative;
			top: 7px;
		}
		/*****************弹框样式******************/
		#main {
			width: 100%;
			height: 100%;
			background-color: rgba(0,0,0,0.6);
			display: none;
			position: fixed;
			z-index: 1;
		}
		#middle {
			display: none;
			height: 150px;
			width: 380px;
			position: relative;
			top: 230px;
			left: 50%;
			margin-left: -170px;
			background: #fff;
		}
		#message {
			height: 110px;
			width: 320px;
			position: relative;
			top: 15px;
			left: 50%;
			margin-left: -160px;
		}
		#message ul li {
			height: 35px;
			width: 320px;
			list-style: none;
		}
		#delete {
			font-size: 16px;
			font-weight: bold;
			color: #3C3C3C;
		}
		#del {
			font-size: 24px;
			font-weight: bold;
			color: #999;
			position: relative;
			left: 250px;
			cursor: pointer;
		}
		#content {
			position: relative;
			top: 12px;
		}
		#confirm {
			height: 30px;
			width: 60px;
			background: #4C8FBD;
			color: #fff;
			font-size: 13px;
			font-weight: bold;
			border-radius: 3px;
			border: 1px #4C8FBD solid;
			cursor: pointer;
			position: relative;
			top: 7px;
		}
		#cancel {
			height: 30px;
			width: 60px;
			background: #fff;
			color: #3C3C3C;
			font-size: 13px;
			font-weight: bold;
			border-radius: 3px;
			border: 1px #D9D9D9 solid;
			cursor: pointer;
			position: relative;
			top: 7px;
			left: 5px;
		}
	</style>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			//获取两个全选复选框
			var check = $(".check");
			//获取所有的商品复选框
			var carts = $(".carts");
			//获取所有的复选框
			var allCheckBox = $("input[type='checkbox']");
			//全选与取消
			check.click(function(){
				var money = 0;
				var total = 0;
				//选中
				if ($(this).is(":checked")) {
					//改变结算按钮样式
					$(".settlement").css("background", "#4C8FBD");
					$(".settlement").attr("disabled", false);
					$(".settlement").css("cursor", "pointer");
					//修改选中商品对应表格背景色
					$(".tr2").css("background", "#FFF8E1");
					//选中所有商品
					allCheckBox.prop("checked", true);
					//获取所有的商品金额
					$(".money span").each(function(){
						var m = $(this).html();
						money = parseFloat(money) + parseFloat(m);
					});
					//获取所有的商品数量
					$(".quantity").each(function(){
						var t = $(this).val();
						total = parseInt(total) + parseInt(t);
					});
					//修改上部已选商品总金额
					$("#c_con_head_s2").html(money.toFixed(2));
					//修改下部已选商品总金额
					$("#c_con_down_d2_s2").html(money.toFixed(2));
					//修改下部已选商品件数
					$("#c_con_down_d2_s1").html(total);
		        } 
				//取消
				else {
					$(".settlement").css("background", "#aaa");
					$(".settlement").attr("disabled", "disabled");
					$(".settlement").css("cursor", "text");
					$(".tr2").css("background", "#FCFCFC");
					allCheckBox.prop("checked", false);
					$("#c_con_head_s2").html("0.00");
					$("#c_con_down_d2_s2").html("0.00");
					$("#c_con_down_d2_s1").html("0");
		        }
			});
			
			
			//商品选中与取消
			carts.click(function(){
				var money = $("#c_con_down_d2_s2").html();
				var total = $("#c_con_down_d2_s1").html();
				if($(this).is(":checked")) {
					//改变结算按钮样式
					$(".settlement").css("background", "#4C8FBD");
					$(".settlement").attr("disabled", false);
					$(".settlement").css("cursor", "pointer");
					$(this).parents("tr").css("background", "#FFF8E1");
					//获取当前选中的商品金额
					var m = $(this).parent().parent().find("td:eq(4)").find("span").html();
					//获取当前选中的商品数量
					var t = $(this).parent().parent().find("td:eq(3)").find("input:eq(1)").val();
					money = parseFloat(money) + parseFloat(m);
					total = parseInt(total) + parseInt(t);
					//修改上部已选商品总金额
					$("#c_con_head_s2").html(money.toFixed(2));
					//修改下部已选商品总金额
					$("#c_con_down_d2_s2").html(money.toFixed(2));
					//修改下部已选商品件数
					$("#c_con_down_d2_s1").html(total);
				}
				else {
					$(this).parents("tr").css("background", "#FCFCFC");;
					check.prop("checked", false);
					var m = $(this).parent().parent().find("td:eq(4)").find("span").html();
					var t = $(this).parent().parent().find("td:eq(3)").find("input:eq(1)").val();
					money = money - parseFloat(m);
					total = parseInt(total) - parseInt(t);
					if(money == 0) {
						$(".settlement").css("background", "#aaa");
						$(".settlement").attr("disabled", "disabled");
						$(".settlement").css("cursor", "text");
						$("#c_con_head_s2").html("0.00");
						$("#c_con_down_d2_s2").html("0.00");
					}
					else {
						$("#c_con_head_s2").html(money.toFixed(2));
						$("#c_con_down_d2_s2").html(money.toFixed(2));
					}
					$("#c_con_down_d2_s1").html(total);
				}
			});
			var form = $("form");
			//结算按钮事件处理
			$(".settlement").click(function(){
				form.attr("action", "cart/settlement");
				form.submit();
			});
			
			//批量删除选中商品事件
			$("#c_con_down_d1 a").click(function(){
				$("#main").fadeIn();
				$("#middle").fadeIn();
				//获取所有被选中的商品
				var checked = $("input:checkbox[name='cartids']:checked");
				if(checked.size() == 0) {
					$("#content").html("请先选择宝贝");
				}
				else {
					$("#content").html("确认要删除这些宝贝吗？");
				}
				form.attr("action", "cart/delete");
				//弹框单击确定事件
				$("#confirm").click(function(){
					if(checked.size() == 0) {
						$("#main").fadeOut();
					}
					else {
						form.submit();
					}
				});
			});
			
			//删除一条商品事件
			$(".td6 a").click(function() {
				$("#main").fadeIn();
				$("#middle").fadeIn();
				$("#content").html("确认要删除该宝贝吗？");
				var cartid = $(this).parents("tr").find("input:checkbox").val();
				//弹框单击确定事件
				$("#confirm").click(function(){
					form.attr("action", "cart/delete/" + cartid);
					form.attr("method", "get");
					form.submit();
				});
			});
			//弹框单击取消事件
			$("#cancel").click(function(){
				$("#main").fadeOut();
			});
			//弹框关闭事件
			$("#del").click(function(){
				$("#main").fadeOut();
			});
			$(".quantity").each(function () {
				var num = parseInt($(this).val());
				if(num == 1) {
					$(".minus").attr("disabled", "disabled");
				
				}
				else if($(this).val() > 1) {
					$(".minus").removeAttr("disabled");
				}
			});
			
			//购买数量减事件处理
			$(".minus").click(function() {
				var num = parseInt($(this).next().val());
				if(num > 1) {
					$(this).next().val(num - 1);
				}
				var cid = $(this).parent().parent().find("td:eq(0)").find("input").val();
				$.ajax({
					type:"post",
					url:"cart/updateQuantity",
					data:{cid:cid, option:"minus", _method:"PUT"},
					success:function(data) {
						if(data == "yes") {
							//页面强制刷新,用于显示或更改购物中心的商品记录数
							window.location.reload();
						}
						else {
							alert("操作失败");
						}
					}
				});
			});
			//购买数量加事件处理
			$(".plus").click(function() {
				var num = parseInt($(this).prev().val());
				var inventory = $(this).next().val();
				if(num < inventory) {
					$(this).prev().val(num + 1);
				}
				var cid = $(this).parent().parent().find("td:eq(0)").find("input").val();
				$.ajax({
					type:"post",
					url:"cart/updateQuantity",
					data:{cid:cid, option:"plus", _method:"PUT"},
					success:function(data) {
						if(data == "yes") {
							//页面强制刷新,用于显示或更改购物中心的商品记录数
							window.location.reload();
						}
						else {
							alert("操作失败");
						}
					}
				});
			});
		});
	</script>
  </head>
  
  <body>
  	<div>
  		<a href="<%=request.getContextPath()%>/vido/01.mp4"></a>
  	</div>
  	<div id="main">
  		<div id="middle">
			<div id="message">
				<ul>
					<li><span id="delete">删除宝贝</span><span id="del">×</span></li>
					<li><span id="content"></span></li>
					<li>
						<input type="button" value="确&nbsp;定" id="confirm">
						<input type="button" value="取&nbsp;消" id="cancel">
					</li>
				</ul>
			</div>
		</div>
	</div>
    <jsp:include page="../head.jsp"></jsp:include>
    <div id="nav">
    	<div id="c_nav">
    		<div id="logo">
    			
    		</div>
    		<div id="logo2">
    			我的购物车
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
    		<form action="" method="post">
	    		<div id="c_con_head">
	    			<span id="c_con_span">已选商品</span>
	    			<span id="c_con_head_s1">￥</span><span id="c_con_head_s2">0.00</span>
	    			<input type="button" value="结&nbsp;&nbsp;算" disabled="disabled" class="settlement">
	    		</div>
	    		<div id="c_con_table">
	    			<table width="1000px" cellpadding="0" cellspacing="0">
	    				<tr class="tr1">
	    					<td class="td1">
		    					<input type="checkbox" class="check">
		    					&nbsp;&nbsp;全选
	    					</td>
	    					<td class="td2">商品信息</td>
	    					<td class="td3">单价</td>
	    					<td class="td4">数量</td>
	    					<td class="td5">金额</td>
	    					<td class="td6">操作</td>
	    				</tr>
	    				</table>
	    				<c:forEach items="${carts }" var="cart">
	    					<table width="1000px" cellpadding="0" cellspacing="0" style="border: 1px #ccc solid;">
		    					<tr class="tr2">
		    						<td class="td1"><input type="checkbox" name="cartids" value="${cart.id }" class="carts"></td>
		    						<td class="td2">
		    							<ul>
		    								<li class="tr2_li1"><a href=""><img src="<%=request.getContextPath()%>/image/${cart.product.imgs[0].name}" height="80px"></a></li>
		    								<li class="tr2_li2"><a href="">${cart.product.name }${cart.product.describe }</a></li>
		    							</ul>
		    						</td>
		    						<td class="price td3">￥<span><fmt:formatNumber type="number" value="${cart.product.price * cart.product.discount }"></fmt:formatNumber></span></td>
		    						<td class="total td4">
		    							<input type="button" value="-" class="minus">
		    							<input type="text" value="${cart.quantity }" class="quantity">
		    							<input type="button" value="+" class="plus">
		    							<input type="hidden" value="${cart.product.inventory }">
		    						</td>
		    						<td class="money td5" style="color: #4C8FBD;">￥<span><fmt:formatNumber type="number" value="${cart.product.price * cart.product.discount * cart.quantity }" groupingUsed="false"></fmt:formatNumber></span></td>
		    						<td class="td6"><a>删除</a></td>
		    					</tr>
	    					</table>
	    				</c:forEach>
	    		</div>
	    		<div id="c_con_down">
	    			<div id="c_con_down_d1">
	    				<input type="checkbox" class="check">
	    				&nbsp;&nbsp;<span>全选</span>
	    				&nbsp;&nbsp;&nbsp;&nbsp;
	    				<a>删除</a>
	    			</div>
	    			<div id="c_con_down_d2">
	    				<span>已选商品</span>&nbsp;<span id="c_con_down_d2_s1">0</span>&nbsp;<span>件</span>&nbsp;&nbsp;&nbsp;&nbsp;
	    				<span>合计：&nbsp;</span><span id="c_con_down_d2_s2">0.00</span>&nbsp;
	    				<input type="button" value="结&nbsp;&nbsp;算" disabled="disabled" class="settlement">
	    			</div>
	    		</div>
    		</form>
    	</div>
    </div>
    <div id="copy">
    	<div id="c_copy">
    		
    	</div>
    </div>
  </body>
</html>
