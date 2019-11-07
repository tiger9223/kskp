<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>글추가하기폼</title>
</head>
<body>

<h1>글추가하기</h1>
<form action="qinsertboard.do" method="post">
<input type="hidden" name="m_seq" value="${ldto.m_seq}"/>
	<table border="1">
		<col width="100px"><col width="300px">
		<c:choose>
			 <c:when test="${ldto.m_status eq 'M'}">
				<tr>
					<th>아이디</th>
		         <td>${ldto.m_email}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${ldto.m_name}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="q_title" required="required"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="60" name="q_conts" required="required"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="글추가"/></td>
				</tr>
			 </c:when>
			<c:when test="${ldto.m_status eq 'A' }">
				<tr>
					<th>아이디</th>
				 <td>${ldto.m_email}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${ldto.m_name}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="q_title" required="required"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="60" name="q_conts" required="required"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="글추가"/></td>
				</tr>
			</c:when>
			  <c:otherwise>
				<tr>
					<th>아이디</th>
				 <td>${ldto1.gu_email}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${ldto1.gu_name}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="q_title" required="required"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea rows="10" cols="60" name="q_conts" required="required"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="글추가"/></td>
				</tr>
			</c:otherwise>				
		</c:choose>
	</table>
</form>
</body>
</html>






