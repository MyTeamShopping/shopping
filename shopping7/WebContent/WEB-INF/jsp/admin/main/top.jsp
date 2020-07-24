<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		* {
			margin: 0px;
			padding: 0px;
			font-size: 12px;
		}
		
		#con {
			height: 47px;
			background: #438EB9;
		}
		
		#con div {
			float: left;
		}
		
		#left {
			height: 37px;
			width: 230px;
			background: url("<%=request.getContextPath() %>/img/logo1.png") no-repeat;
			position: relative;
			left: 30px;
			top: 3px;
		}
		
		#right {
			text-align: right;
			width: 100%;
			position: relative;
			bottom: 10px;
			right: 20px;
			color: #f5f5f5;
			font-weight: bold;
			font-family: arial;
		}
		
		#right a:VISITED, #right a:LINK {
			color: #f5f5f5;
			font-family: arial;
			text-decoration: none;
		}
		
		#right a:HOVER {
			color: #f5f5f5;
			font-family: arial;
			text-decoration: underline;
		}
	</style>
	<script type="text/javascript">
		setInterval("clock.innerHTML=new Date().toLocaleString() + '&nbsp;&nbsp;' + ''.charAt(new Date().getDay());",1000);
	</script>
  </head>
  
  <body>
    <div id="con">
    	<div id="left"></div>
    	<div id="right">
    		<span>
    			欢迎<a href="">${loginAdmin.nickname }</a>&nbsp;&nbsp;
    			<a href="admin/logout" target="_top">退出</a>
    		</span>&nbsp;&nbsp;
    		<span id="clock"></span>
    	</div>
    </div>
  </body>
</html>
