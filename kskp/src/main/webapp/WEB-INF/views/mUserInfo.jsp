<%@page import="com.hk.kskp.dtos.MembersDto"%>
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

<c:choose>
	<c:when test="${ldto.m_status eq 'M'}">
		<h1>${dto1.m_name} 님정보보기</h1>	
		<table border="1">
		<tr>
			<td>이름</td>
			<td colspan="2">${dto1.m_name}</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${dto1.m_email}</td>
			<td><button onclick="">인증하기</button></td>
		</tr>
		<tr>
			<td>가입일</td>
			<td colspan="2"><f:formatDate value="${dto1.m_regdate}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>${dto1.m_phone}</td>
			<td><button onclick="">인증하기</button></td>
		</tr>
		<tr>
			<td colspan="3"><button onclick="location.href='muserinfoform.do'">회원수정</button></td>
		</tr>
			</table>
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
	</c:when>
	<c:otherwise>
	<h1>${dto2.gu_name}님 정보입니다.</h1>
	<table border="1">
		<tr>
			<td>이메일</td>
			<td>${dto2.gu_email}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${dto2.gu_name}</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>${dto2.gu_phone}</td>
			<td><button onclick="">인증하기</button></td>
		</tr>
		<tr>
			<td>은행</td>
			<td>${dto2.gu_bank}</td>
		</tr>
		<tr>
			<td>계좌번호</td>
			<td>${dto2.gu_acc}</td>
		</tr>
		<tr>
			<td>가입일 </td>
			<td><f:formatDate value="${dto2.gu_regdate}" pattern="yyyy-MM-dd"/></td>
		</tr>
		<tr>
			<td><button onclick="location.href='guserinfoform.do'">회원수정</button></td>
		</tr>
	</table>
	</c:otherwise>
</c:choose>
</body>
</html>