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
<form action="muldel.do" method="post">
	<table border="1">
		<col width="50px">
		<col width="50px">
		<col width="100px">
		<col width="300px">
		<col width="100px">
		<tr>
			<th><input type="checkbox" onclick="allSel(this.checked)" /></th>
			<th>번호</th>
			<th>보낸사람</th>
			<th>제목</th>
			<th>보낸시간</th>
		</tr>
		<c:choose>
				<c:when test="${empty list}">
		<tr>
			<td colspan="5" style="text-align : center;">---쪽지가 없습니다.---</td>
		</tr>
			</c:when>
				<c:otherwise>
				<c:forEach items="${list}" var="dto">
		<tr>
			<td><input type="checkbox" name="chk" value="${dto.l_seq}" /></td>
			<td>${dto.l_sender}</td>
			<td>${dto.l_title}</td>
			<td><a href="letterdetail.do?seq=${dto.l_seq}">${dto.l_title}</a></td>
			<td>${dto.l_regdate}</td>
		</tr>
	</c:forEach>
	</c:otherwise>
	</c:choose>
	<tr>
		<td colspan="5">
			<input type="submit" value="삭제"/>
		</td>
		
	</tr>
</table>
</form>



</body>
</html>