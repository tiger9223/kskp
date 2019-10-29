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

<form action="sendletter.do" method="post">
<p>보내는 사람 : 
	<c:choose>
	<c:when test="${ldto.m_status eq 'M'}">
		<input type="hidden" name="l_sender" value="${ldto.m_email}">
		${ldto.m_email}
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
		<input type="hidden" name="l_sender" value="${ldto.m_email}">
		${ldto.m_email}
	</c:when>
	<c:otherwise>
		<input type="hidden" name="l_sender" value="${ldto1.gu_email}">
		${ldto1.gu_email}
	</c:otherwise>
	</c:choose></p>
<p>받는 사람 : <input type="text" name="l_receiver" placeholder="상대방이메일을 입력하세요">
<p>제목 : <input type="text" name="l_title" placeholder="제목을 입력하세요"></p>
<p>내용 : <textarea cols="30" rows="3" name="l_conts" placeholder="내용을 입력하세요"></textarea></p>
<input type="submit" value="보내기"><button onclick="location.href='main.jsp'" value="취소">취소</button> 
</form>
</body>
</html>