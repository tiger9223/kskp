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
<h1>로그인</h1>
<h4>네이버로그인</h4>
<form action="">
<p>아이디*</p>
<input type="text" style="width:280px;" placeholder="아이디"><br/>
<p>비밀번호*</p>
<input type="text" style="width:280px;" placeholder="비밀번호"><br/>

<a href="">아이디 찾기</a>
<a href="">비밀번호 찾기</a>
<br/>
<input type="submit" name="sub1" value="로그인" />
</form>
</body>
</html>