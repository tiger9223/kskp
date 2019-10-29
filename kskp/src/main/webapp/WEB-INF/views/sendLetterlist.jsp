<%@page import="java.util.Map"%>
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
<script type="text/javascript">
	function allSel(ele){
		var chks=document.getElementsByName("chk");
		for(var i=0;i<chks.length;i++){
			chks[i].checked=ele; 
		}
	}
</script>
</head>
<%
Map<String,Integer>map=(Map<String,Integer>)request.getAttribute("pmap");
%>
<body>
<form action="sendmuldel.do" method="post">
<input type="hidden" name="l_sender" value="${dto.l_sender}">
<input type="hidden" name="l_receiver" value="${dto.l_receiver}">
	<table border="1">
		<col width="50px">
		<col width="50px">
		<col width="100px">
		<col width="300px">
		<col width="100px">
		<tr>
			<th><input type="checkbox" onclick="allSel(this.checked)" /></th>
			<th>번호</th>
			<th>받은사람</th>
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
				<c:choose>
					<c:when test="${dto.l_senddelflag=='1'}">
					</c:when>
				<c:otherwise>
		<tr>
			<td><input type="checkbox" name="chk" value="${dto.l_seq}" /></td>
			<td>${dto.l_seq}</td>
			<td>${dto.l_receiver}</td>
			<td><a href="sendletterdetail.do?l_seq=${dto.l_seq}">${dto.l_title}</a></td>
			<td><f:formatDate value="${dto.l_regdate}" pattern="yyyy-MM-dd"/></td>
		</tr>
			</c:otherwise>
						</c:choose>
	</c:forEach>
	</c:otherwise>
	</c:choose>
	<tr>
			<td colspan="6" style="text-align: center;">
				<a href="sendletterlist.do?l_sender=${ldto.m_email}&pnum=<%=map.get("prePageNum")%>">◀</a>
				<%
					int pcount=(Integer)request.getAttribute("pcount");
					for(int i=map.get("startPage");i<=map.get("endPage");i++){
						%>
						<a href="sendletterlist.do?l_sender=${ldto.m_email}&pnum=<%=i%>" style="text-decoration: none;"><%=i%></a>				
						<%
						}					
				%>
				<a href="sendletterlist.do?l_sender=${ldto.m_email}&pnum=<%=map.get("nextPageNum")%>">▶</a>
			</td>
		</tr>	
	<tr>
	<tr>
		<td colspan="5">
			<input type="submit" value="삭제"/>
		</td>
		
	</tr>
</table>
</form>
</body>
</html>