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
<h1>결제하기</h1>
<form action="emailcerform.do" method="post">
<h2></h2>
<p>이름</p>
<input type="text" name="m_name" placeholder="id" /><br/>
<p>이메일</p>
<input type="email" name="m_email"  placeholder="email@email.com" /><br/>
<p>비밀번호</p>
<input type="password" name="m_pw" placeholder="pw" /><br/>
<p>비밀번호 확인</p>
<input type="password" name="m_pw1" placeholder="pwck" /><br/>
<input type="submit" value="회원가입">
</form>
</body>
</html>