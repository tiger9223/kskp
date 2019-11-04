<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@page import="java.util.Map"%>
<%@page import="com.hk.kskp.dtos.MembersDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체회원 목록 조회</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
</head>

<body>
<h1>swag 일반회원 목록조회</h1>
       <table border="1">
			<col width="100px">
			<col width="80px">
			<col width="150px">
		
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>회원가입일자</th>
			</tr>
					
			<c:forEach items="${mlist}" var="mDto">
				<c:if test="${mDto.m_status eq 'M'}">
			<tr>
				<td>${mDto.m_email}</td>
				<td>${mDto.m_name}</td>
			    <td><fmt:formatDate value="${mDto.m_regdate}" pattern="yyyy년MM월dd일"/></td>				
			</tr>
				</c:if>
			</c:forEach>
						
		
	</table>
	
	<h1>swag 가이드회원 목록조회</h1>
       <table border="1">
			<col width="100px">
			<col width="80px">
			<col width="150px">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>회원가입일자</th>
			</tr>
			<c:forEach items="${glist}" var="mDto">
			<tr>
				<td>${mDto.gu_email}</td>
				<td>${mDto.gu_name}</td>
			    <td><fmt:formatDate value="${mDto.gu_regdate}" pattern="yyyy년MM월dd일"/></td>				
			</tr>
			</c:forEach>
		
	</table>
	
	

</body>
</html>