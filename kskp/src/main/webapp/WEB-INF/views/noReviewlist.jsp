<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title></title>
</head>
<body>
<h1>후기글 남기기</h1>
	<c:choose>
		<c:when test="${empty list}">
			<tr>
				<td colspan="10">후기남길 여행간 곳 없습니다.<br/>
								지금 당장 여행을 떠나보실까요?
					<a href="">전체상품보기</a>
				</td>
			</tr>
		</c:when>
	<c:otherwise>
       <table border="1">
       		<col width="80px">
			<col width="150px">
			<col width="150px">
			<col width="150px">
			<tr>
				<th>상품번호</th>
				<th>가이드</th>
				<th>상품명</th>
				<th>후기남기기</th>
			</tr>
			<c:forEach items="${list}" var="Dto">
				<c:if test="${Dto.r_ans eq 0}">
					<tr>
						<td>${Dto.G_seq}</td>
						<td>${Dto.}</td>
						<td>${Dto.}</td>
						<td><button onclick="">후기작성</button></td>				
					</tr>
				</c:if>
			</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
</body>
</html>