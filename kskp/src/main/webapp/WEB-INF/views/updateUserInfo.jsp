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
		<form action="mupdate.do" method="post">
			<p>이메일 : <input type="text" name="m_email" readonly="readonly" value="${ldto.m_email}"></p>
			<p>이름 : ${ldto.m_name}</p>
			<p>비밀번호 변경 : <input type="password" name="m_pw" /></p>
			<input type="submit" value="정보수정"/>
		</form>
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
		<a href="auserinfo.do">내 정보보기</a>
	</c:when>
	<c:otherwise>
			<form action="gupdate.do" method="post">
			<p>이메일 : <input type="text" name="gu_email" readonly="readonly" value="${ldto1.gu_email}"></p>
			<p>이름 : ${ldto1.gu_name}</p>
			<p>비밀번호 변경 : <input type="password" name="gu_pw" /></p>
			<p>은행 : <input type="text" name="gu_bank" value="${ldto1.gu_bank}"></p>
			<p>계좌번호 : <input type="text" name="gu_acc" value="${ldto1.gu_acc}"></p>
			<input type="submit" value="정보수정"/>
		</form>
	</c:otherwise>
</c:choose>
</body>
</html>