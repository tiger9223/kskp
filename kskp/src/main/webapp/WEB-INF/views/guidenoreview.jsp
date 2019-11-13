<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title></title>
</head>
<body>
<div><h3>답글달지 않은 후기</h3></div>
	<c:choose>
		<c:when test="${empty list}">
			후기작성자가 없습니다.
		</c:when>
		<c:otherwise>
		<c:forEach items="${list}" var="dto">
		<table>
		<tr>
		<td>${dto.g_name}<td>
			<tr>
				<th><c:choose>
				<c:when test="${dto.r_star eq 1}">
				★ &nbsp;
				</c:when>
				<c:when test="${dto.r_star eq 2}">
				★★&nbsp;
				</c:when>
				<c:when test="${dto.r_star eq 3}">
				★★★&nbsp;
				</c:when>
				<c:when test="${dto.r_star eq 4}">
				★★★★&nbsp;
				</c:when>
				<c:when test="${dto.r_star eq 5}">
				★★★★★&nbsp;
				</c:when>
				</c:choose>
				</th>
				<th>${dto.m_name}</th>
				<th><f:formatDate value="${dto.r_regdate}" pattern="yyyy-MM-dd"/> </th>
			</tr>
			<tr>
				<td colspan="3">${dto.r_conts}</td>
			</tr>
			<tr>
				<td><input type="button" onclick="location.href='getreviewform.do?r_seq=${dto.r_seq}'" value="답글달기" /></td>
			</tr>
			<hr/>
		</table>
		</c:forEach>
		</c:otherwise>
	</c:choose>




</body>
</html>