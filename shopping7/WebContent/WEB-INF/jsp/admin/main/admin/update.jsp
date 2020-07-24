<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 


</head>
<body>
  <sf:form action="admin/update" method="post" modelAttribute="admin">
        <input type="hidden" name="_method" value="PUT">
        <sf:hidden path="id"/>
        <input type="hidden" name="id" value="${admin.id }">
        <table>
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
            <input type="submit" value="修改" class="su">
         </td>
           </tr>
          
        </table>
  </sf:form>
</body>
</html>