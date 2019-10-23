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
<h1>가이드 회원가입</h1>
<form action="ginsertuser.do" method="post">
<p>이름 : <input type="text" name="gu_name" placeholder="id" /></p>
<p>이메일 : <input type="text" name="gu_email" placeholder="email" /></p>
<p>비밀번호 : <input type="text" name="gu_pw" placeholder="pw" /></p>
<p>비밀번호 확인 : <input type="text" name="gu_pw1" placeholder="pwck" /></p>
<p>휴대폰 : <input type="text" name="gu_phone" placeholder="telephone" /></p>
<p>은행 : <input type="text" name="gu_bank" placeholder="bank" /></p>
<p>계좌번호 : <input type="text" name="gu_acc" placeholder="account" /></p>
<p>신분증 <input type="button" name="gu_acc" value="첨부하기"></p>
<input type="submit" value="회원가입">
</form>
</body>
</html>