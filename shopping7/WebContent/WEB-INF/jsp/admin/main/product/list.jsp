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
<title>商品列表</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
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
   <table class="table">
   <thead class="thead-dark">
      <tr>
         <td scope="col">序号</td>
         <td scope="col">商品名称</td>
         <td scope="col">商品价格</td>
         <td scope="col">商品销量</td>
         <td scope="col">商品库存</td>
         <td scope="col">商品描述</td>
         <td scope="col">商品折扣</td>
         <td scope="col">商品状态</td>
         <td scope="col">商品类别</td>
         <td scope="col">操作</td>
         
      
      </tr>
      </thead>
        <c:forEach items="${products }" var="product" varStatus="i">
            <tr>
         <td>${i.index+1 }</td>
         <td>${product.name }</td>
         <td>${product.price }</td>
         <td>${product.sales }</td>
         <td>${product.inventory }</td>
         <td>${product.describe }</td>
         <td>${product.discount }</td>
         <td>
            <c:if test="${product.status eq 1 }">上架</c:if>
            <c:if test="${product.status eq 2 }">下架</c:if>     
         </td>
         <td>${product.category.name }</td>
             <td> <a href="product/${product.id }/detail">商品详情</a></td>
              <td><a href="product/${product.id }/update">修改</a></td>
             <td> <a href="product/${product.id }/delete" class="del">删除</a></td>

         
      
      </tr>
        
        </c:forEach>
   </table>
    <form action="" method="post">
    	<input type="hidden" name="_method" value="DELETE">
    </form>
</body>
</html>