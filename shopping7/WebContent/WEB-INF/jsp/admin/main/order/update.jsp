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
  <sf:form action="order/update" method="post" modelAttribute="order">
        <input type="hidden" name="_method" value="PUT">
        <sf:hidden path="id"/>
        <input type="hidden" name="id" value="${order.id }">
        <table>
	   			<tr>
	   				<td>订单价格</td>
	   				<td><sf:input path="price" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>订单状态</td>
	   				<td><sf:input path="status" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>订单删除</td>
	   				<td><sf:input path="isdel" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>订单日期</td>
	   				<td><sf:input path="date" class="in" type="date"/></td>
	   			</tr>
	   			<tr>
	   				<td>订单地址</td>
	   				<td><sf:input path="address" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>订单用户</td>
	   				<td><sf:input path="user" class="in"/></td>
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