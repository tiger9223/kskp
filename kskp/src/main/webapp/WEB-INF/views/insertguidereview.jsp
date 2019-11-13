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
<form action="insertgreview.do" method="post">
<input type="hidden" name="r_seq" value="${dto.r_seq}"/>
<input type="hidden" name="gu_seq" value="${ldto1.gu_seq}"/>
<table border="1">

	<tr>
		<td>내용</td>
		<td>${dto.r_conts}</td>
	<tr>
		<td>답글달기</td>
		<td><textarea cols="100" rows="50" name="r_ans"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="right"><input type="submit" value="답글달기"/></td>
	</tr>
</table>
</form>
</body>
</html>