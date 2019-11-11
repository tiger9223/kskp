<%@page import="com.hk.kskp.dtos.QaDto"%>
<%@page import="java.util.Map"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
<title>Insert title here</title>
<script type="text/javascript">
	function allSel(ele){// ele는 전체 선택 체크박스의 체크여부(true/false)
		var chks=document.getElementsByName("chk");//chks[chk,chk,chk,chk]	
		for(var i=0;i<chks.length;i++){
			chks[i].checked=ele;//각각의 체크박스에 전달받은 체크여부(true/false)를 적용
		}
	}
</script>
</head>
<%
Map<String,Integer>map=(Map<String,Integer>)request.getAttribute("pmap");
%>
<body>
	<h1>미답변 목록보기</h1>
	<form action="boardController.do" method="post">
		<input type="hidden" name="command" value="muldel" />
		<table border="1">
			<col width="50px">
			<col width="100px">
			<col width="300px">
			<col width="100px">
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제 목</th>
				<th>작성일</th>
			</tr>
			<c:choose>
					<c:when test="${empty list}">
					<tr>
						<td colspan="4" style="text-align: center;">---작성된 글이 없습니다.---</td>
					</tr>
					</c:when>
					<c:otherwise>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.q_seq}</td>
							<td>${dto.m_name}</td>
							<td><a href="qboarddetail.do?q_seq=${dto.q_seq}">${dto.q_title}</a>&nbsp;						
					<c:choose>
							<c:when test="${dto.q_flag eq '0'}">
							답변대기
							</c:when>
							<c:otherwise>
							답변완료
							</c:otherwise>
					</c:choose>	
							</td>
							<td><f:formatDate value="${dto.q_regdate}" pattern="yyyy-MM-dd"/></td>
						</tr>
						</c:forEach>
					</c:otherwise>
			</c:choose>		
			
				<tr>
			<td colspan="6" style="text-align: center;">
				<a href="unanswered.do?pnum=<%=map.get("prePageNum")%>">◀</a>
				<%
					int pcount=(Integer)request.getAttribute("pcount");
					for(int i=map.get("startPage");i<=map.get("endPage");i++){
						%>
						<a href="unanswered.do?pnum=<%=i%>" style="text-decoration: none;"><%=i%></a>				
						<%
						}					
				%>
				<a href="unanswered.do?pnum=<%=map.get("nextPageNum")%>">▶</a>
			</td>
		</tr>
			<c:if test="${ldto.m_status eq 'M'}">
			<tr>
				<td colspan="4"><a href="qinsertform.do">글추가</a>
			</tr>
			</c:if>	
		</table>
	</form>
</body>
</html>










