
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 상세보기</title>
</head>

<body>
<h1>게시글 상세보기</h1>
<table border="1">
	<tr>
		<th>번호</th>
		<td>${dto1.n_seq}</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>관리자</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td>${dto1.n_regdate}</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto1.n_title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" readonly="readonly">${dto1.n_conts}</textarea> </td>
	</tr>
<
</table>

</body>
</html>






