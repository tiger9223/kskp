<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리페이지</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<style type="text/css">
#hello {
	border: soild red 1px;
}

#header {
	text-align: center;
}

#container {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}

#bar {
	padding: 20px;
}
#body {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}
</style>
</head>
<body>
<h1>공지사항</h1>
<table border="1">
   <col width="50px">
   <col width="50px">
   <col width="300px">
   <col width="100px">
   <col width="100px">
   <tr>
      <th><input type="checkbox" onclick="allSel(this.checked)" /></th>
      <th>지역</th>   
      <th>등록일</th>
      <th>상품명</th>
      <th>총판매 수</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="6" style="text-align: center;">---등록된 상품이 없습니다.---</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <tr>
               <td>${dto.g_area}"</td>
               <td>${dto.g_date}</td>
               <td>${dto.g_name}</td>
               <td>${dto.g_res}"</td> 
            </tr>   
            </c:forEach>
            <c:choose>
                  <c:when test="${ldto.m_status eq 'A'}">
                  <tr>
                     <td colspan="6">
                        <a href="ninsertform.do">글추가</a>
                     <input type="submit" value="삭제"/>
                     </td>
                  </tr>
                  </c:when>
               </c:choose>   
         </c:otherwise>
      </c:choose>
</table>
</body>
</html>