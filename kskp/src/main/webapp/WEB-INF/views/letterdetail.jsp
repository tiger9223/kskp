<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title></title>
</head>
<body>
<h1>게시글 상세보기</h1>
<form action="recdel.do" method="post">
	<input type="hidden" name="l_seq" value="${dto.l_seq}">
	<input type="hidden" name="l_receiver" value="${dto.l_receiver}">
	<input type="hidden" name="pnum" value="${pnum}">
<table border="1">
	<tr>
		<th>보낸 사람</th>
		<td>${dto.l_sender}</td>
	</tr>
	<tr>
		<th>보낸날짜</th>
		<td><f:formatDate value="${dto.l_regdate}" pattern="yyyy-MM-dd"/></td>
	</tr>
		<tr>
		<th>제목</th>
		<td>${dto.l_title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="3" cols="30" readonly="readonly" >${dto.l_conts}</textarea></td>
	</tr>
		<tr>
		<td colspan="3">
			<input type="submit" value="삭제" />
			<input type="button" value="목록" onClick="location.href='letterlist.do?l_receiver=${dto.l_receiver}&pnum=${pnum}'" />
		</td>
	</tr>
</table>
</form>
</body>
</html>