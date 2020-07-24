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
    
    <title>管理员列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/content.css">
	<style type="text/css">
		#down table {
			position: relative;
			left: 50%;
			margin-left: -250px;
			top: 50px;
			border-top: 1px #999 solid;
			border-right: 1px #999 solid;
		}
		#down tr {
			height: 40px;
		}
		
		#down tr td {
			text-align: center;
			border-left: 1px #999 solid;
			border-bottom: 1px #999 solid;
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
		tbody tr:nth-child(odd) {
			background: #e5e5e5;
		}
		
		tbody tr:nth-child(even) {
			background: #d5d5d5;
		}
		
		#page {
			width: 500px;
			position: relative;
			left: 50%;
			margin-left: -250px;
			top: 60px;
			text-align: center;
		}
		#args span {
			color: #438EB9;
		}
		#datas a:VISITED,#datas a:LINK {
			color: #5539F2;
		}
		#datas a:HOVER {
			color: #5539F2;
			font-weight: bold;
		}
	</style>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".del").click(function() {
				if(confirm("确定删除吗?") == true) {
					var href = $(this).attr("href");//获取超链接的href属性
					//给表单的action属性赋值,并提交表单
					$("form").attr("action", href).submit();
					return false;
				}
				else {
					return false;
				}
			});
		});
	</script>
  </head>
  
  <body>
  	<div id="up">
	   <ul>
	    	<li><span><a href="admin/welcome">平台首页 </a>&gt; 管理员管理 &gt; 用户列表</span></li>
	   </ul>
	</div>
	<div id="down">
	    <table width="500px" cellpadding="0" cellspacing="0">
	    	<thead>
		    	<tr class="head">
		    		<td>序号</td>
		    		<td>用户</td>
		    		<td>密码</td>
		    		<td>昵称</td>
		    		<td>权限</td>
		    		<td>操作</td>
		    	</tr>
	    	</thead>
	    	<tbody>
				<c:forEach items="${admins }" var="admin" varStatus="i">
			    	<tr>
			    		<td>${i.index + 1 }</td>
			    		<td>${admin.username }</td>
			    		<td>${admin.password }</td>
			    		<td>${admin.nickname }</td>
			    		<td>${admin.role }</td>
			    		<td>
		    				<a href="admin/${admin.id }/update">修改</a>
							<a href="admin/${admin.id }/delete" class="del">删除</a>
			    		</td>
			    	</tr>
				</c:forEach>
			</tbody>
	    </table>
    </div>
    <form action="" method="post">
    	<input type="hidden" name="_method" value="DELETE">
    </form>
  </body>
</html>
