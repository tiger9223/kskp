<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>paylist</title>
</head>
<body>
<table border="1">
   <col width="50px">
   <col width="110px">
   <col width="300px">
   <col width="80px">
   <tr>
   	  <th>결제 번호</th>  
      <th>투어날짜</th>
      <th>상품명</th>
      <th>인원수</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="6" style="text-align: center;">결제 내역이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <tr>
               <td>${dto.p_seq}</td>
               <td>${dto.p_cost}</td>
               <td><fmt:formatDate value="${dto.p_date}" pattern="yyyy년MM월dd일"/></td>
               <td>${dto.p_name}</td>
               <td>${dto.p_num}</td> 
            </tr>   
            </c:forEach>
         </c:otherwise>
         </c:choose>
</body>
</html>