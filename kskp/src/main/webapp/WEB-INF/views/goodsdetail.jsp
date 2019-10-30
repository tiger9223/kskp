<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>상품상세페이지</title>
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
<h1>상품 상세보기</h1>
<table border="1">
   <col width="188px">
   <col width="50px">
   <col width="100px">
   <col width="300px">
   <col width="80px">
   <tr>
   	  <th>여행 대표사진</th>  
      <th>지역</th>   
      <th>투어날짜</th>
      <th>상품명</th>
      <th>총판매 수</th>
   </tr> 
            <tr>
               <td><img id="img" src="${gdto.g_thumbimg}"/></td>
               <td>${gdto.g_area}</td>
               <td>${gdto.g_date}</td>
               <td>${gdto.g_name}</td>
               <td>${gdto.g_res}</td> 
            </tr>   
</table>
</body>
</html>