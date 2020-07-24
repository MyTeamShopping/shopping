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
  <sf:form action="category/update" method="post" modelAttribute="category">
        <input type="hidden" name="_method" value="PUT">
        <sf:hidden path="id"/>
        <input type="hidden" name="id" value="${category.id }">
        <table>
           <tr>
              <td>类别名称</td>
              <td><sf:input path="name" class="in"/></td>
           </tr>
           <tr>
              <td>类别描述</td>
              <td><sf:textarea path="describe" cols="49" rows="3"/></td>
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