<%@page import="com.hk.kskp.dtos.QaDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 수정하기</title>
</head>
<body>
<h1>게시글 수정하기</h1>
<form action="qboardupdate.do" method="post">
<input type="hidden" name="q_seq" value="${qdto.q_seq}">
<table border="1">
	<tr>
		<th>번호</th>
		<td>${qdto.q_seq}</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>${qdto.q_seq}</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${qdto.m_name}</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td><f:formatDate value="${qdto.q_regdate}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<th>제목</th>
		<td><input type="text" name="q_title" value="${qdto.q_title}" required="required"/></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" name="q_conts" required="required">${qdto.q_conts}</textarea> </td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="수정완료"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>






