<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답글 달기</title>
</head>
<body>
<h1>답글달기 상세보기</h1>
<form action="qinsertans.do" method="post">
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
		<td>${qdto.q_title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" readonly="readonly">${qdto.q_conts}</textarea> </td>
	</tr>
		<tr>
		<th>답변</th>
		<td><textarea name="q_ans" rows="10" cols="60" ></textarea> </td>
		</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="답변달기"/>
		</td>
	</tr>
</table>
</form>
</body>
</html>