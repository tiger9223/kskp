<%@page import="com.hk.kskp.dtos.MembersDto"%>
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
<h1>내 정보보기</h1>
<p>이메일 :${ldto.m_email}</p>
<p>이름 :${ldto.m_email} </p>
<p>비번 :${ldto.m_email}</p>
<button onclick="location.href='update.do?m_email=${ldto.m_email}'">회원수정</button>
</body>
</html>