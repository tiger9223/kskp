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

<form action="sendletter" method="post">
<p>보내는 사람 : 
	<c:choose>
	<c:when test="${ldto.m_status eq 'M'}">
		${ldto.m_name}
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
		${ldto.m_name}
	</c:when>
	<c:otherwise>
		${ldto.gu_name}
	</c:otherwise>
	</c:choose></p>
<p>받는 사람 : <input type="text" name="m_reciver" value="받는 사람">
<p>제목 : <input type="text" name="l_title" value="제목"></p>
<p>내용 : <textarea col="30" row="3" name="l_conts"></textarea></p>
<input type="submit" value="보내기"><input tpye="button" value="취소">
</form>
</body>
</html>