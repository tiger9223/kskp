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
<form action="">
<table border="1">
<tr>
	<td>은행<td>
	<td>${dto.gu_bank}</td>
</tr>
<tr>
	<td>계좌</td>
	<td>${dto.gu_acc}</td>
</tr>
<tr>
	<td>정산금액</td>
	<td></td>
</tr>
<tr>
	<td><input type="submit"/> </td>
</tr>
</table>
</form>
</body>
</html>