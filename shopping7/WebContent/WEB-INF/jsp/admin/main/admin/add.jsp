<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
			font-size: 14px;
		}
		
		#up {
			height: 40px;
			border-bottom: 1px #999 dotted;
		}
		#up ul li {
			background: url("<%=request.getContextPath()%>/img/hold.png") 0 0 no-repeat #e5e5e5;
			color: #4C8FBD;
			background-position: 5px 9px;
			height: 40px;
		}
		
		#up ul li span {
			position: relative;
			top: 12px;
			left: 30px;
		}
		
		#down tr {
			height: 60px;
		}
		
		#up a:VISITED,#up a:LINK {
			color: #4C8FBD;
			text-decoration: none;
		}
		#up a:HOVER {
			color: #4C8FBD;
			text-decoration: none;
		}
		.head {
			background: #438EB9;
			color: #fff;
		}
		#down table {
			position: relative;
			left: 50%;
			margin-left: -250px;
			top: 50px;
		}
		
		#down tr {
			height: 40px;
		}
		.in {
			height: 30px;
			width: 360px;
		}
		.su {
			height: 30px;
			width: 80px;
			background: #438EB9;
			border-radius: 5px;
			margin-left: 30px;
		}
	</style>

  </head>
  
  <body>
	<div id="up">
	   <ul>
	    	<li><span><a href="admin/welcome">平台首页 </a>&gt; 管理员管理 &gt; 用户添加</span></li>
	   </ul>
	</div>
	<div id="down">
	    <sf:form method="post" modelAttribute="admin">
	   		<table width="500px">
	   			<tr>
	   				<td>用户名称</td>
	   				<td><sf:input path="username" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>用户密码</td>
	   				<td><sf:input path="password" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>用户昵称</td>
	   				<td><sf:input path="nickname" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>用户权限</td>
	   				<td><sf:input path="role" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td></td>
	   				<td>
	   					<input type="submit" value="提&nbsp;&nbsp;&nbsp;交" class="su">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   					<input type="reset" value="清&nbsp;&nbsp;&nbsp;空" class="su">
	   				</td>
	   			</tr>
	   		</table>
	    </sf:form>
    </div>
  </body>
</html>
