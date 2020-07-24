<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>商品详情页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/item.css">
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
	left: 150px;
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

#minus, #plus {
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

#btn1, #btn2 {
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
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
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

		});
		
	</script>
</head>

<body>
	<div id="con">
		<div id="c_con">
			<div id="up">
				<div id="left">
					<div id="left_u">
						<c:forEach items="${product.imgs }" var="img">
							<img src="<%=request.getContextPath()%>/image/${img.name}"
								height="360px" />
						</c:forEach>
					</div>
					<div id="left_d">
						<ul>
							<c:forEach items="${product.imgs }" var="img">
								<li><img
									src="<%=request.getContextPath()%>/image/${img.name}"
									height="55px" /></li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div id="right">
				<sf:form action="product/detail" method="post" modelAttribute="product" enctype="multipart/form-data">
				<input type="hidden" name="id" value="${product.id }">
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
							<td class="td4">￥&nbsp;<fmt:formatNumber type="number"
									value="${product.price * product.discount }"></fmt:formatNumber></td>
						</tr>
						<tr class="tr2">
							<td class="td2">&nbsp;&nbsp;销量</td>
							<td class="td3">${product.sales }</td>
						</tr>
						<tr class="tr2">
							<td class="td2">&nbsp;&nbsp;商品库存</td>
							<td class="td3">${product.inventory }</td>
						</tr>
						<tr class="tr2">
							<td class="td2">&nbsp;&nbsp;商品折扣</td>
							<td class="td3">${product.discount }</td>
						</tr>
						<tr class="tr2">
							<td class="td2">&nbsp;&nbsp;商品状态</td>
							<td class="td3">${product.status }</td>
						</tr>
						<tr class="tr2">
							<td class="td2">&nbsp;&nbsp;商品类别</td>
							<td class="td3">${product.category.name }</td>
						</tr>
						
							<tr>
								<td>添加商品宣传图片</td>
								<td><input type="file" name="files" class="in"></td>
							</tr>
							<tr>
							<td><input type="submit" value="提&nbsp;&nbsp;&nbsp;交"
								class="su">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
								<input
								type="reset" value="清&nbsp;&nbsp;&nbsp;空" class="su">
							</td>
							</tr>
					</table>
					</sf:form>
				</div>
			</div>
			<div id="down"></div>
		</div>
	</div>
</body>
</html>
