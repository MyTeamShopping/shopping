<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<title>产品更新</title>
 


</head>
<body>
  <sf:form action="product/update" method="post" modelAttribute="product">
        <input type="hidden" name="_method" value="PUT">
        <sf:hidden path="id"/>
        <input type="hidden" name="id" value="${product.id }">
        <table>
	   			<tr>
	   				<td>商品名称</td>
	   				<td><sf:input path="name" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>商品价格</td>
	   				<td><sf:input path="price" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>商品销量</td>
	   				<td><sf:input path="sales" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>入库数量</td>
	   				<td><sf:input path="inventory" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>商品描述</td>
	   				<td><sf:textarea cols="48" rows="3" path="describe"/></td>
	   			</tr>
	   			<tr>
	   				<td>商品折扣</td>
	   				<td><sf:input path="discount" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>商品状态</td>
	   				<td><sf:input path="status" class="in"/></td>
	   			</tr>
	   			<tr>
	   				<td>商品类别</td>
	   				<td>
	   					<select name="cid" class="in">
	   						<option value="${category.name}">--请选择类别--</option>
	   						<c:forEach items="${categories }" var="category">
	   							<option value="${category.id }">${category.name }</option>
	   						</c:forEach>
	   					</select>
	   				</td>
	   			</tr>
<!-- 	   			<tr>
	   				<td>商品图片</td>
	   				<td><input type="file" name="files" class="in"></td>
	   			</tr> -->
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