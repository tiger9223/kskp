<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<h1>거절이메일 전송</h1>
<table border="1">
<tr>
	<td>받는 사람</td>
	<td>${dto.gu_email}</td>
<tr>
	<td><textarea rows="30" cols="30" name="conts"></textarea></td>
</tr>
<tr>
<td><button onclick="location.href='delguide.do?gu_seq=${dto.gu_seq}'">이메일전송</button><td>
</table>

</body>
</html>