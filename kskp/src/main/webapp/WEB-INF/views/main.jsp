<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
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
<c:choose>
	<c:when test="${ldto.m_status eq 'M'}">
		<a href="muserinfo.do?m_email=${ldto.m_email}">내 정보보기</a>
		<a href="logout.do">로그아웃</a>
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
		<a href="auserinfo.do">내 정보보기</a>
		<a href="logout.do">로그아웃</a>
	</c:when>
	<c:otherwise>
		<a href="guserinfo.do?gu_email=${ldto1.gu_email}">내 정보보기</a>
		<a href="logout.do">로그아웃</a>
	</c:otherwise>
</c:choose>

</body>
</html>