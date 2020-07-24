<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   <table>
      <tr>
         <td>序号</td>
         <td>商品名称</td>
         <td>商品价格</td>
         <td>商品库存</td>
         <td>商品销量</td>
         <td>商品折扣</td>
         <td>商品状态</td>
         <td>商品类别</td>
         <td>操作</td>
         
      
      </tr>
        <c:forEach items="${products }" var="product" varStatus="i">
            <tr>
         <td>${i.index+1 }</td>
         <td>${product.name }</td>
         <td>${product.price }</td>
         <td>${product.inventory }</td>
         <td>${product.sales }</td>
         <td>${product.describe }</td>
         <td>
            <c:if test="${product.status eq 1 }">上架</c:if>
            <c:if test="${product.status eq 2 }">下架</c:if>
            
         </td>
         <td>${product.category.name }</td>
         <td>
              <a href="product/${product.id }">商品详情</a>
              <a href="product/${product.id }/update">修改</a>
              <a href="product/${product.id }/delete">删除</a>
         
         </td>
         
      
      </tr>
        
        </c:forEach>
   </table>
</body>
</html>