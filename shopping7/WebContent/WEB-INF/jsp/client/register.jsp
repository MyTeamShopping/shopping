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
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
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
			border-bottom: 3px #e6e6e6 solid;
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
		#reg {
			clear: both;
		}
		#c_reg table {
			position: relative;
			left: 50%;
			margin-left: -250px;
			text-align: center;
			margin-top: 50px;
			margin-bottom: 50px;
		}
		
		input.in {
			margin-top: 20px;
			margin-bottom: 20px;
			width: 300px;
			height: 40px;
			color: #999;
		}
		
		.su {
			margin-bottom: 20px;
			height: 30px;
			width: 100px;
			background: #4C8FBD;
			border-radius: 6px;
			color: #fff;
			border-radius: 4px;
			border: 1px #4C8FBD solid;
			cursor: pointer;
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
	<script type="text/javascript">
		window.onload = function() {
			var username = document.getElementById("username");
			var pwd1 = document.getElementById("pwd1");
			var pwd2 = document.getElementById("pwd2");
			var phone = document.getElementById("phone");
			var email = document.getElementById("email");
			var btn = document.getElementById("btn");
			//光标进入焦点事件
			username.onfocus = function() {
				if(username.value == "请输入一个用户明名") {
					username.value = "";
					this.style.color = "#000";
					this.style.fontSize = "16px";
				}
			};
			
			//光标失去焦点事件
			username.onblur = function() {
				if(username.value == "") {
					username.value = "请输入一个用户明名";
					this.style.color = "#999";
					this.style.fontSize = "12px";
					var reg = /^[a-zA-Z][a-zA-Z0-9]\w{4,14}$/;//正则表达式匹配字母开头,字母数字下划线组合,6-18位
				}
			};
			
			pwd1.onfocus = function() {
				if(pwd1.value == "请输入密码") {
					pwd1.value = "";
					this.style.color = "#000";
					this.setAttribute("type","password");
					this.style.fontSize = "16px";
				}
			};
			
			pwd1.onblur = function() {
				if(pwd1.value == "") {
					pwd1.value = "请输入密码";
					this.style.color = "#999";
					this.setAttribute("type","text");
					this.style.fontSize = "12px";
				}
			};
			
			pwd2.onfocus = function() {
				if(pwd2.value == "确认密码") {
					pwd2.value = "";
					this.style.color = "#000";
					this.setAttribute("type","password");
					this.style.fontSize = "16px";
				}
			};
			
			pwd2.onblur = function() {
				if(pwd2.value == "") {
					pwd2.value = "确认密码";
					this.style.color = "#999";
					this.setAttribute("type","text");
					this.style.fontSize = "12px";
				}
			};
			
			phone.onfocus = function() {
				if(phone.value == "请输入手机号") {
					phone.value = "";
					this.style.color = "#000";
					this.style.fontSize = "16px";
				}
			};
			
			phone.onblur = function() {
				if(phone.value == "") {
					phone.value = "请输入手机号";
					this.style.color = "#999";
					this.style.fontSize = "12px";
					var reg = /^1[3|4|5|7|8][0-9]\d{8}/;//正则表达式匹配手机号
				}
			};
			
			email.onfocus = function() {
				if(email.value == "请输入邮箱") {
					email.value = "";
					this.style.color = "#000";
					this.style.fontSize = "16px";
				}
			};
			
			email.onblur = function() {
				if(email.value == "") {
					email.value = "请输入邮箱";
					this.style.color = "#999";
					this.style.fontSize = "12px";
				}
			};
			
			btn.onclick = function() {
				if(username.value == "请输入一个用户明名" || username.value == "") {
					alert("请输入用户名");
				}
				else {
					if(pwd1.value == "请输入密码" || pwd1.value == "") {
						alert("请输入密码");
					}
					else {
						if(pwd1.value != pwd2.value) {
							alert("两次密码不一致");
						}
						else {
							if(phone.value == "请输入手机号" || phone.value == "") {
								alert("请输入手机号");
							}
							else {
								if(email.value == "请输入邮箱" || email.value == "") {
									alert("请输入邮箱");
								}
								else {
									var form = document.getElementById("form");
									form.submit();
								}
							}
						}
					}
				}
			};
		};
	</script>
  </head>
  
  <body>
    <jsp:include page="head.jsp"></jsp:include>
    <div id="nav">
    	<div id="c_nav">
    		<div id="logo1">
    			
    		</div>
    		<div id="logo2">
    			用户注册
    		</div>
    	</div>
    </div>
    <div id="reg">
    	<div id="c_reg">
    		<form action="<%=request.getContextPath() %>/user/register" method="post"  id="form" > 
	    		<table width="500px">
	    			<tr>
	    				<td>
	    					<input type="text" name="username" value="请输入一个用户明名" id="username" class="in" autocomplete="off">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="text" name="password" value="请输入密码" id="pwd1" class="in" autocomplete="off">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="text" value="确认密码" id="pwd2" class="in" autocomplete="off">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="text" name="phone" value="请输入手机号" id="phone" class="in" autocomplete="off">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="text" name="email" value="请输入邮箱" id="email" class="in" autocomplete="off">
	    				</td>
	    			</tr>
	    			<tr>
	    				<td>
	    					<input type="button" value="注&nbsp;&nbsp;册" id="btn" class="su">&nbsp;&nbsp;&nbsp;&nbsp;
	    					<input type="reset" value="重&nbsp;&nbsp;置" id="res" class="su">
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
