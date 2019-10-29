<%@page import="com.hk.kskp.dtos.QaDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 상세보기</title>
</head>
<body>
<h1>게시글 상세보기</h1>
<table border="1">
	<tr>
		<th>번호</th>
		<td>${qdto.q_seq}</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>${qdto.q_seq}</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${qdto.m_name}</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td><f:formatDate value="${qdto.q_regdate}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${qdto.q_title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" readonly="readonly">${qdto.q_conts}</textarea> </td>
	</tr>
	<c:choose>
	<c:when test="${qdto.q_flag eq '0'}">
	</c:when>
	<c:otherwise>
	<tr>
		<th>답변</th>
		<td><textarea rows="10" cols="60" readonly="readonly">${qdto.q_ans}</textarea> </td>
	</tr>
	</c:otherwise>
	</c:choose>
	<tr>
		<td colspan="2">
			<button onclick="qupdateBoard(${qdto.q_seq})">수정</button>
			<button onclick="qdelboard(${qdto.q_seq})">삭제</button>
			<button onclick="qansBoard(${qdto.q_seq})">답글</button>
		</td>
	</tr>
</table>
<script type="text/javascript">
//글삭제하기
function qdelboard(q_seq){
	location.href="qdelboard.do?seq="+q_seq;
}
//글수정하기
function qupdateBoard(q_seq){
	location.href="qboardupdateform.do?seq="+q_seq;//get방식으로 파라미터 전송
}
//답글달기
function qansBoard(q_seq){
	location.href="qansform.do?q_seq="+q_seq;
}
</script>
</body>
</html>






