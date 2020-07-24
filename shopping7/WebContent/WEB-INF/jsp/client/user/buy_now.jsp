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
	<%--<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/buy_now.css"/>--%>
	<style type="text/css">
		/*LOGO部分样式*/
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
		#con {
			margin-top: 10px;
		}
		#c_con {
			width: 1000px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		/*确认收货地址部分样式*/
		.d1 {
			height: 20px;
			width: 1000px;
			border-bottom: 2px #F1F1F1 solid;	
			font-size: 15px;
			font-weight: bold;
			color: #3C3C3C;
		}
		.no_address {
			color: #FF4400;
		}
		#address ul li {
			height: 30px;
			list-style: none;
		}
		#address ul li span {
			position: relative;
			top: 7px;
			left: 95px;
		}
		.phone {
			font-size: 14px;
			font-weight: bold;
		}
		.in {
			position: relative;
			top: 8px;
			left: 90px;
		}
		#new_place {
			height: 50px;
		}
		#new_place ul li {
			height: 35px;
			border: 1px #4C8FBD solid;
			background: #FFF0E8;
		}
		#new_place ul li span {
			font-size: 14px;
			font-weight: bold;
			color: #666;
		}
		#address_ul {
			color: #666;
		}
		.bg {
			background: #FFF0E8;
		}
		.addBg {
			background: #FFF0E8;
			border: 1px #4C8FBD solid;
			font-weight: bold;
			height: 40px;
		}
		
		/************确认订单信息样式************/
		#order table {
			position: relative;
			top: 10px;
			color: #666;
		}
		.tr1 {
			height: 30px;
		}
		.tr1 td {
			text-align: center;
			border-bottom: 3px #4C8FBD solid;
			border-right: 1px #fff solid;
			border-left: 1px #fff solid;
		}
		.tr2 {
			height: 80px;
			background: #FBFCFF;
		}
		.tr2_price span {
			color: #4C8FBD;
			font-weight: bold;
		}
		.tr3,.tr4 {
			height: 50px;
			background: #F2F7FF;
		}
		.tr2 td {
			text-align: center;
			border-bottom: 1px #fff solid;
			border-right: 1px #fff solid;
			border-left: 1px #fff solid;
		}
		.tr3 td,.tr4 td{
			text-align: center;
		}
		.tr3 span {
			font-size: 20px;
			color: #4C8FBD;
			font-weight: bold;
		}
		.tr4 input {
			color: #fff;
			background: #4C8FBD;
			height: 40px;
			width: 140px;
			border-radius: 6px;
			font-size: 16px;
			font-weight: bold;
			border: 1px #4C8FBD solid;
			cursor: pointer;
		}
		
		/************弹出页面样式************/
		#create_address {
			cursor: pointer;
			color: #4C8FBD;
			font-size: 14px;
			position: relative;
			left: 105px;
		}
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
			height: 500px;
			width: 850px;
			position: relative;
			top: 70px;
			left: 50%;
			margin-left: -425px;
			background: #B4B4B4;
		}
		#new_address {
			display: none;
			height: 480px;
			width: 830px;
			position: relative;
			top: 10px;
			left: 50%;
			margin-left: -415px;
			background: #fff;
		}
		
		#new_address_top {
			height: 35px;
			background: #E6E6E6;
		}
		#new_address_top span {
			font-size: 16px;
			font-weight: bold;
		}
		#new_address_top_s1 {
			position: relative;
			top: 7px;
			left: 10px;
		}
		#new_address_top_s2 {
			position: relative;
			top: 7px;
			left: 735px;
			cursor: pointer;
		}
		#new_address_top_s2:HOVER {
			background: #CCC;
			border-radius: 10px;
		}
		
		#new_address table {
			position: relative;
			top: 50px;
			left: 50%;
			margin-left: -225px;
		}
		#new_address table tr {
			height: 50px;
		}
		#province,#city,#country {
			height: 27px;
		}
		#city {
			width: 108px;
		}
		#country {
			width: 108px;
		}
		#place,#address_name,#address_phone {
			width: 337px;
			height: 27px;
		}
		.enter {
			text-align: center;
		}
		#btn {
			width: 70px;
			height: 30px;
			background: #4C8FBD;
			color: #fff;
			border-radius: 6px;
			border: 1px #4C8FBD solid;
			cursor: pointer;
		}
		
		/************版权部分样式************/
		#copy {
			margin-top: 20px;
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
		$(function(){
			//省市县地址联动
			var address;
			$.get("<%=request.getContextPath()%>/js/Area.xml",function(data){
				address = data;
				init();
			});
			function init() {
				//得到省
				$(address).find("prov").each(function(){
					$("#province").append("<option value='" + 
							$(this).attr("id") +"'>" + $(this).attr("text") + 
							"</option>");
				});
				
				$("#province").change(function(){
					$("#city").html("<option>--请选择市--</option>");
					$("#country").html("<option>--请选择县区--</option>");
					$(address).find("prov[id='" + $(this).val() + "'] city").each(function(){
						$("#city").append("<option value='" + 
								$(this).attr("id") + "'>" + $(this).attr("text") + 
								"</option>");
					});
				});
				
				$("#city").change(function(){
					$("#country").html("<option>--请选择县区--</option>");
					$(address).find("city[id='" + $(this).val() + "'] county").each(function(){
						$("#country").append("<option value='" + 
								$(this).attr("id") + "'>" + $(this).attr("text") + 
								"</option>");
					});
				});
			}
			//使用新地址单击事件
			$("#create_address").click(function(){
				$("#main").fadeIn();
				$("#middle").fadeIn();
				$("#new_address").fadeIn();
			});
			//弹出框单击确定事件操作
			$("#btn").click(function(){
				var province = $("#province").find("option:selected").text();
				var city = $("#city").find("option:selected").text();
				var country = $("#country").find("option:selected").text();
				var place = $("#place").val();
				var base = province + " " + city + " " + country;
				var address_name = $("#address_name").val();
				var address_phone = $("#address_phone").val();
				if(province == "--请选择省份--") {
					alert("请选择省份");
					return false;
				}
				else {
					if(city == "--请选择市--") {
						alert("请选择市");
						return false;
					}
					else {
						if(country == "--请选择县区--") {
							alert("请选择县区");
							return false;
						}
						else {
							if(place == "") {
								alert("请输入详细地址");
								return false;
							}
							else {
								if(address_name == "") {
									alert("请输入收货人姓名");
									return false;
								}
								else {
									if(address_phone == "") {
										alert("请输入联系方式");
										return false;
									}
								}
							}
						}
					}
				}
				var str = "<ul><li><input type='radio' checked='checked' class='in'/><span>" + base + " " + place 
						+ "(" + address_name + "收)</span><span>" + address_phone + "</span></li></ul>" 
						+ "<input type='hidden' name='base' value='" + base + "'/>"
						+ "<input type='hidden' name='place' value='" + place + "'/>" 
						+ "<input type='hidden' name='name' value='" + address_name + "'/>"
						+ "<input type='hidden' name='phone' value='" + address_phone + "'/>";
				$("#new_place").html(str);
				$("#main").fadeOut();
				$("#address_ul").fadeOut();
			});
			//弹出框单击关闭事件操作
			$("#new_address_top_s2").click(function(){
				$("#main").fadeOut();
			});
			//收货地址鼠标经过事件
			$("#address ul li").mouseover(function(){
				$(this).toggleClass("bg");
			}).mouseout(function(){
				$(this).toggleClass("bg");
			});
			//收货地址选中按钮单击事件
			$("#address_ul li input").click(function(){
				$("#address_ul li").each(function() {
					var input = $(this).find("input:radio[name='aid']:checked").val();
					if(input != null) {
						$(this).addClass("addBg");
					}
					else {
						$(this).removeClass("addBg");
					}
				});
			});
			var totalPrice = 0;
			//订单总价计算
			$(".tr2_price_span").each(function(){
				totalPrice =  totalPrice + parseFloat($(this).html());
			});
			$("#totalPrice").html(totalPrice.toFixed(2));
			$("#price").val(totalPrice);
			var cart_id = "";
			//购物车id字符串拼接
			$(".cart_id").each(function(n){
				cart_id = cart_id + "," + $(this).val();
			});
			$("#cids").val(cart_id);
		});
	</script>
  </head>
  
  <body>
  	<div id="main">
  		<div id="middle">
			<div id="new_address">
				<div id="new_address_top">
					<span id="new_address_top_s1">创建地址</span>
					<span id="new_address_top_s2">&nbsp;×&nbsp;</span>
				</div>
				<table width="450px"> 
					<tr>
						<td>地址信息</td>
						<td>
							<select id="province">
		  						<option>--请选择省份--</option>
		  					</select>
			  				<select id="city">
			  					<option>--请选择市--</option>
			  				</select>
			  				<select id="country">
			  					<option>--请选择县区--</option>
			  				</select>
						</td>
					</tr>
					<tr>
						<td>详细地址</td>
						<td><input type="text" id="place"></td>
					</tr>
					<tr>
						<td>收货人姓名</td>
						<td><input type="text" id="address_name"></td>
					</tr>
					<tr>
						<td>联系方式</td>
						<td><input type="text" id="address_phone"></td>
					</tr>
					<tr>
						<td colspan="2" class="enter">
							<input type="button" value="确&nbsp;&nbsp;定" id="btn">
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
    <jsp:include page="../head.jsp"></jsp:include>
    <div id="nav">
    	<div id="c_nav">
    		<div id="logo"></div>
    	</div>
    </div>
    <div id="con">
    	<div id="c_con">
    		<form action="order/create_order" method="post">
    			<input type="hidden" name="cids" id="cids">
    			<input type="hidden" name="price" id="price">
    			<div class="d1">确认收货地址</div>
    			<div id="address">
    				<ul id="address_ul">
	    				<c:if test="${fn:length(addresses) eq 0 }">
	    					<li><span class="no_address">您还没有保存收货地址,请添加新地址</span></li>
	    				</c:if>
	    				<c:if test="${fn:length(addresses) ne 0 }">
	    					<c:forEach items="${addresses }" var="address" varStatus="i">
	    						<c:if test="${i.index eq 0 }">
	    							<li class="addBg">
			    						<input type="radio" name="aid" value="${address.id }" class="in" checked="checked">
			    						<span>${address.base }&nbsp;${address.place }&nbsp;(&nbsp;${address.name }收&nbsp;)&nbsp;</span><span class="phone">${address.phone }</span>
		    						</li>
	    						</c:if>
	    						<c:if test="${i.index ne 0 }">
	    							<li>
			    						<input type="radio" name="aid" value="${address.id }" class="in">
			    						<span>${address.base }&nbsp;${address.place }&nbsp;(&nbsp;${address.name }收&nbsp;)&nbsp;</span><span class="phone">${address.phone }</span>
		    						</li>
	    						</c:if>
	    					</c:forEach>
	    				</c:if>
    				</ul>
    				<span id="create_address">使用新地址</span>
    				<div id="new_place">
    					
    				</div>
    			</div>
    			<div class="d1">确认订单信息</div>
    			<div id="order">
    				<table width="1000" cellpadding="0" cellspacing="0">
    					<tr class="tr1">
    						<td>商品图片</td>
    						<td>商品名称</td>
    						<td>单价</td>
    						<td>数量</td>
    						<td>优惠价</td>
    						<td>小计</td>
    					</tr>
    					<c:forEach items="${carts }" var="cart">
    						<input type="hidden" value="${cart.id }" class="cart_id">
	    					<tr class="tr2">
	    						<td><img src="<%=request.getContextPath() %>/image/${cart.product.imgs[0].name }" height="50"></td>
	    						<td>${cart.product.name }</td>
	    						<td>￥${cart.product.price }</td>
	    						<td>${cart.quantity }</td>
	    						<td>￥<fmt:formatNumber type="number" value="${cart.product.price * cart.product.discount }"></fmt:formatNumber></td>
	    						<td class="tr2_price">
		    						<span>￥</span>
		    						<span class="tr2_price_span"><fmt:formatNumber type="number" value="${cart.product.price * cart.product.discount * cart.quantity }" groupingUsed="false"></fmt:formatNumber></span>
	    						</td>
	    					</tr>
    					</c:forEach>
    					<tr class="tr3">
    						<td></td>
    						<td></td>
    						<td></td>
    						<td></td>
    						<td></td>
    						<td>订单总价：&nbsp;<span>￥</span><span id="totalPrice"></span></td>
    					</tr>
    					<tr class="tr4">
    						<td></td>
    						<td></td>
    						<td></td>
    						<td></td>
    						<td></td>
    						<td><input type="submit" value="提交订单"></td>
    					</tr>
    				</table>
    			</div>
    		</form>
    	</div>
    </div>
    <div id="copy">
    	<div id="c_copy">
    		&copy;版权所有2018-2019
    	</div>
    </div>
  </body>
</html>
