<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글추가하기폼</title>
</head>
<body>
<h1>글추가하기</h1>
<form action="ninsertboard.do" method="post">
<input type = "hidden" name="m_seq" value="${ldto.m_seq}">
	<table border="1">
		<col width="100px"><col width="300px">
		<tr>
			<th>제목</th>
			<td><input type="text" name="n_title" required="required"/></td>
		</tr>
		<tr>
			<th>글내용</th>
			<td><textarea rows="10" cols="60" name="n_conts" required="required"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="글추가"/></td>
		</tr>
	</table>
</form>
</body>
</html>






