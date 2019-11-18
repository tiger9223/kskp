<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class='no-js css-menubar' lang='en'>
<head>
<meta charset='utf-8'>
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
			<c:choose>
			<c:when test="${ldto.m_status eq 'M'}">
			<td colspan="4" style="text-align: center;">---작성된 글이 없습니다.---</td>
			</c:when>
			<c:when test="${ldto.m_status eq 'A'}">
			<td colspan="5" style="text-align: center;">---작성된 글이 없습니다.---</td>
			</c:when>
			<c:otherwise>
				<td colspan="4" style="text-align: center;">---작성된 글이 없습니다.---</td>
			</c:otherwise>
			</c:choose>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="dto">
				<tr><c:choose>
					<c:when test="${ldto.m_status eq 'A'}">
					<td><input type="checkbox" name="chk" value="${dto.n_seq}"/></td>
					<td>${dto.n_seq}</td>
					<td><a href="ngetboard.do?n_seq=${dto.n_seq}">${dto.n_title}</a></td>
					<td><f:formatDate value="${dto.n_regdate}" pattern="yyyy년MM월dd일"/></td> 
					<td>${dto.n_count}</td>
					</c:when>
					<c:otherwise>	
					<td>${dto.n_seq}</td>
					<td><a href="ngetboard.do?n_seq=${dto.n_seq}">${dto.n_title}</a></td>
					<td><f:formatDate value="${dto.n_regdate}" pattern="yyyy년MM월dd일"/></td> 
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

<script type="text/javascript">
	function allSel(ele){// ele는 전체 선택 체크박스의 체크여부(true/false)	
		var chks=document.getElementsByName("chk");//chks[chk,chk,chk,chk]	
		for(var i=0;i<chks.length;i++){
			chks[i].checked=ele;//각각의 체크박스에 전달받은 체크여부(true/false)를 적용
		}
	}
</script>



</body>
</html>
