
<%@page import="java.util.Map"%>
<%@page import="com.hk.kskp.dtos.NoticeDto"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<h1>공지사항</h1>
<form action="nmuldel.do" method="post">
<table border="1">
	<col width="50px">
	<col width="100px">
	<col width="300px">
	<col width="100px">
	<col width="80px">


	<c:choose>
	<c:when test="${ldto.m_status eq 'A'}">
		<tr>
		<th><input type="checkbox" onclick="allSel(this.checked)" /></th>
		<th>번호</th>	
		<th>제 목</th>
		<th>작성날짜</th>
		<th>조회수</th>
	</tr>
	</c:when>
	<c:otherwise>
		<tr>
		<th>번호</th>	
		<th>제 목</th>
		<th>작성날짜</th>
		<th>조회수</th>
		</tr>
	</c:otherwise>
	</c:choose>	
					
		<c:choose>
			<c:when test="${empty list}">
				<tr>
					<td colspan="4" style="text-align: center;">---작성된 글이 없습니다.---</td>
				</tr>	
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="dto">
				<tr><c:choose>
					<c:when test="${ldto.m_status eq 'A'}">
					<td><input type="checkbox" name="chk" value="${dto.n_seq}"/></td>
					<td>${dto.n_seq}</td>
					<td><a href="ngetboard.do?n_seq=${dto.n_seq}">${dto.n_title}</a></td>
					<td><fmt:formatDate value="${dto.n_regdate}" pattern="yyyy년MM월dd일"/></td> 
					<td>${dto.n_count}</td>
					</c:when>
					<c:otherwise>
					<td>${dto.n_seq}</td>
					<td><a href="ngetboard.do?n_seq=${dto.n_seq}">${dto.n_title}</a></td>
					<td><fmt:formatDate value="${dto.n_regdate}" pattern="yyyy년MM월dd일"/></td> 
					<td>${dto.n_count}</td>
					</c:otherwise>
					</c:choose>
				</tr>	
				</c:forEach>
			</c:otherwise>
		</c:choose>     
      <tr>
			<td colspan="6" style="text-align: center;">
				<a href="nboardlist.do?pnum=<%=map.get("prePageNum")%>">◀</a>
				<%
					int pcount=(Integer)request.getAttribute("pcount");
					for(int i=map.get("startPage");i<=map.get("endPage");i++){
						%>
						<a href="nboardlist.do?pnum=<%=i%>" style="text-decoration: none;"><%=i%></a>				
						<%
						}					
				%>
				<a href="nboardlist.do?pnum=<%=map.get("nextPageNum")%>">▶</a>
			</td>
		</tr>	  
		 
		<c:choose>
				<c:when test="${ldto.m_status eq 'A'}">
					<tr>
						<td colspan="5">
							<a href="ninsertform.do">글추가</a>
						<input type="submit" value="삭제"/>
						</td>
					</tr>
				</c:when>
		</c:choose>
	
		
</table>
</form>
</body>
</html>










