<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title></title>
</head>
<body>

<c:choose>
	<c:when test="${ldto.m_status eq 'M'}">
		<h1>${ldto.m_name} 정보보기</h1>
			<p>이메일 :${ldto.m_email}</p>
			<p>이름 :${ldto.m_name} </p>
			<p>비번 :${ldto.m_pw}</p>
			<button onclick="location.href='muserinfoform.do'">회원수정</button>
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
	</c:when>
	<c:otherwise>
		<p>이메일 :${ldto1.gu_email}</p>
		<p>이름 :${ldto1.gu_name} </p>
		<p>비번 :${ldto1.gu_pw}</p>
		<p>전화번호 :${ldto1.gu_phone}</p>
		<p>은행 : ${ldto1.gu_bank}</p>
		<p>계좌번호 :  ${ldto1.gu_acc}</p>
		<button onclick="location.href='guserinfoform.do'">회원수정</button>
	</c:otherwise>
</c:choose>








</body>
</html>