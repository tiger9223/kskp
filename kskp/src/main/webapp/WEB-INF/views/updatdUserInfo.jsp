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
<form action="update.do" method="post">
	<input type="hidden" name="m_email" value="#{ldto.m_email}">
<p>이메일 : #{ldto.m_email}</p>
<p>이름 : #{ldto.m_name></p>
<p>비밀번호 변경 : <input type="password" name="m_pw" />
<input type="submit" value="정보수정"/>

</form>

</body>
</html>