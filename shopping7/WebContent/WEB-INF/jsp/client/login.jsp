<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
		#nav {
			height: 80px;
			margin-top: 10px;
		}
		#c_nav {
			width: 1000px;
			height: 80px;
			position: relative;
			left: 50%;
			margin-left: -500px;
		}
		#c_nav div {
			float: left;
		}
		#logo1 {
			width: 120px;
			height: 60px;
			background: url("<%=request.getContextPath() %>/img/logo.png") no-repeat;
		}
		#logo2 {
			width: 870px;
			height: 60px;
			font-size: 26px;
			position: relative;
			top: 8px;
			left: 15px;
			color: #3C3C72;
		}
		#c_login table {
			position: relative;
			left: 65%;
			top: 150px;
			border: 1px #999 solid;
			background: #F5EAFB;
		}
		#c_login table tr {
			height: 60px;
		}
		.s1 {
			font-size: 16px;
			color: #3C3C3C;
			position: relative;
			left: 25px;
			font-weight: bold;
		}
		#login {
			height: 90%;
			background-size: cover;
		    background-repeat: no-repeat;
		    background-position: center center;
		}
		input.in {
			margin-top: 20px;
			margin-bottom: 20px;
			width: 300px;
			height: 40px;
			color: #999;
			border-radius: 3px;
			border: 1px #DBDBDB solid;
			position: relative;
			left: 25px;
		}
		.su {
			margin-bottom: 20px;
			height: 40px;
			width: 300px;
			background: #4C8FBD;
			border-radius: 6px;
			border: 1px #4C8FBD solid;
			color: #fff;
			cursor: pointer;
			font-size: 16px;
			position: relative;
			left: 25px;
			top: 15px;
		}
		.a1 {
			position: relative;
			left: 25px;
		}
		.a1:VISITED, .a1:LINK {
			color: #6C6C6C;
			text-decoration: none;
		}
		.a1:HOVER {
			color: #4C8FBD;
			text-decoration: underline;
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
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			changeImg();
			var username = document.getElementById("username");
			var password = document.getElementById("password");
			var btn = document.getElementById("btn");
			//光标进入焦点事件
			username.onfocus = function() {
				if(username.value == "用户名/手机号/邮箱") {
					username.value = "";
					this.style.color = "#000";
					this.style.fontSize = "16px";
				}
			};
			
			//光标失去焦点事件
			username.onblur = function() {
				if(username.value == "") {
					username.value = "用户名/手机号/邮箱";
					this.style.color = "#999";
					this.style.fontSize = "12px";
				}
			};
			
			password.onfocus = function() {
				if(password.value == "请输入密码") {
					password.value = "";
					this.style.color = "#000";
					this.setAttribute("type","password");
					this.style.fontSize = "16px";
				}
			};
			
			password.onblur = function() {
				if(password.value == "") {
					password.value = "请输入密码";
					this.style.color = "#999";
					this.setAttribute("type","text");
					this.style.fontSize = "12px";
				}
			};
			
			btn.onclick = function() {
				if(username.value == "用户名/手机号/邮箱" || username.value == "") {
					alert("请输入用户名/手机号/邮箱");
				}
				else {
					if(password.value == "请输入密码" || password.value == "") {
						alert("请输入密码");
					}
					else {
						var form = document.getElementById("form");
						form.submit();
					}
				}
			};
		};
		function changeImg(){
			var currentImg = Math.floor(Math.random()*2);
			var imgArr = ["login_bg01.png","login_bg02.png"];
			var img = document.getElementById("login");
			img.style.backgroundImage="url(<%=request.getContextPath() %>/img/" + imgArr[currentImg] + ")";
		};
	</script>
  </head>
  
  <body>
    <div id="nav">
    	<div id="c_nav">
    		<div id="logo1">
    			
    		</div>
    		<div id="logo2">
    			用户登录
    		</div>
    	</div>
    </div>
    <div id="login">
    	<div id="c_login">
    		<form action="<%=request.getContextPath() %>/user/login" method="post" id="form">
	    		<table width="350px" cellpadding="0" cellspacing="0">
	    			<tr>
	    				<td><span class="s1">密码登录</span></td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="text" name="username" value="用户名/手机号/邮箱" id="username" class="in" autocomplete="off">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="text" name="password" value="请输入密码" id="password" class="in" autocomplete="off">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="button" value="登&nbsp;&nbsp;录" id="btn" class="su">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<a href="" class="a1">忘记密码</a>
	    					<a href="<%=request.getContextPath() %>/user/register" class="a1">免费注册</a>
	    				</td>
	    			</tr>
	    		</table>
    		</form>
    	</div>
    </div>
    <div id="copy">
    	<div id="c_copy">
    		&copy;版权所有2016-2017
    	</div>
    </div>
  </body>
</html>
