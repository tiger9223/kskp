<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">
th{
 align : center;
}
.tab{
 align-content: center;
}


</style>
</head>
<body>
<table border="1">
		<col width="150px">
		<col width="150px">
		<col width="150px">
		<col width="150px">
		<col width="150px">
		<tr>
			<th>가이드 이름</th>
			<th>회원결제금액</th>
			<th>가이드수익</th>
			<th>관리자수익금액</th>
			<th>정산날짜</th>
		</tr>
	<c:choose>
				<c:when test="${empty list}">
		<tr>
			<td colspan="5" style="text-align : center;">---수익내역이 없습니다.---</td>
		</tr>
			</c:when>
			
				<c:otherwise>
				<div class="tab">
				<c:forEach items="${list}" var="dto" >
						<tr>
							<td>${dto.gu_name}</td>
							<td>${dto.s_cost}원</td>
							<td>${dto.s_gcost}원</td>
							<td>${dto.s_cost-dto.s_gcost}원</td>
							<td><f:formatDate value="${dto.s_aregdate}" pattern="yyyy-MM-dd"/></td>
						</tr>
				</c:forEach>
				</div>
			</c:otherwise>
	</c:choose>
	<c:forEach items="${list}" var="dto" begin="1" end="1">
		<tr>
			<td>총수익</td>
			<td colspan="4" align="right">${dto.m_salary}원</td>
		</tr>
		</c:forEach>
</table>

</body>
</html>