
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<td>${dto1.n_seq}</td>
	</tr>
	<tr>
		<th>작성자</th>
		<td>관리자</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td><f:formatDate value="${dto1.n_regdate}" pattern="yyyy-MM-dd"/></td>
	</tr>
	<tr>
		<th>제목</th>
		<td>${dto1.n_title}</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea rows="10" cols="60" readonly="readonly">${dto1.n_conts}</textarea> </td>
	</tr>
		<c:choose>
			<c:when test="${ldto.m_status eq 'A'}">
			<tr>
				<td colspan="2">
					<button onclick="nupdateBoard(${dto1.n_seq})">수정</button>
				</td>
			</tr>
			</c:when>
		</c:choose>
</table>
<script type="text/javascript">
//글수정하기
function nupdateBoard(n_seq){
	location.href="nupdateboardform.do?seq="+n_seq;//get방식으로 파라미터 전송
}
</script>
</body>
</html>







