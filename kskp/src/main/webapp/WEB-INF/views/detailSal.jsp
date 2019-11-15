<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title></title>
</head>
<body>
<h1>수익내역</h1>
<table border="1">
 <tr>
      <th>상품명</th>
      <th>투어날짜</th>
   	  <th>가격</th> 
      <th>인원수</th>
   </tr>
   <c:forEach items="${list}" var="dto">
   <tr>
   	<td>${dto.p_name}</td>
   	<td>${dto.p_date}</td>
   <td>${dto.p_cost }</td>
   <td>${dto.p_num}</td>
   </tr>
   </c:forEach>
   
</table>
</body>
</html>