<%@page import="com.hk.kskp.dtos.LetterDto"%>
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
<body>
<form action="recmuldel.do" method="post">
	<input type="hidden" name="l_sender" value="${dto.l_sender}">
	<input type="hidden" name="l_receiver" value="${dto.l_receiver}">
	<input type="hidden" name="pnum" value="${pnum}">
		<table border="1">
			<col width="50px">
			<col width="50px">
			<col width="100px">
			<col width="300px">
			<col width="100px">
		<tr>
			<th><input type="checkbox" onclick="allSel(this.checked)" /></th>
			<th>번호</th>
			<th>보낸사람</th>
			<th>제목</th>
			<th>보낸시간</th>
		</tr>
		
<c:choose>
	<c:when test="${ldto.m_email eq dto.l_receiver}">
		<c:choose>
				<c:when test="${empty list}">
					<tr>
						<td colspan="5" style="text-align : center;">---쪽지가 없습니다.---</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="dto">
								<tr>
									<td><input type="checkbox" name="chk" value="${dto.l_seq}" /></td>
									<td>${dto.l_seq}</td>
									<td>${dto.l_sender}</td>
									<td><a href="letterdetail.do?l_seq=${dto.l_seq}">${dto.l_title}</a></td>
									<td><f:formatDate value="${dto.l_regdate}" pattern="yyyy-MM-dd"/></td>
								</tr>
					</c:forEach>
				</c:otherwise>	
		</c:choose>
			<tr>
               <td colspan="7" align="center">
                  <a href="letterlist.do?l_receiver=${ldto.m_email}&pnum=${map.prePageNum}">◀</a>
                  <c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" step="1">
                     <c:choose>
                        <c:when test="${pnum eq i}">
                           ${i}
                        </c:when>
                        <c:otherwise>
                           <a href="letterlist.do?l_receiver=${ldto.m_email}&pnum=${i}">${i}</a>
                        </c:otherwise>
                     </c:choose>   
                  </c:forEach>
                  <a href="letterlist.do?l_receiver=${ldto.m_email}&pnum=${map.nextPageNum}">▶</a>
               </td>
            </tr>

	<tr>
		<td colspan="5">
			<input type="submit" value="삭제" />
		</td>
	</tr>
	</c:when>
	
	<c:otherwise>
	<c:choose>
	<c:when test="${empty list}">
					<tr>
						<td colspan="5" style="text-align : center;">---쪽지가 없습니다.---</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="dto">
								<tr>
									<td><input type="checkbox" name="chk" value="${dto.l_seq}" /></td>
									<td>${dto.l_seq}</td>
									<td>${dto.l_sender}</td>
									<td><a href="letterdetail.do?l_seq=${dto.l_seq}">${dto.l_title}</a></td>
									<td><f:formatDate value="${dto.l_regdate}" pattern="yyyy-MM-dd"/></td>
								</tr>
					</c:forEach>
				</c:otherwise>	
		</c:choose>
			<tr>
               <td colspan="7" align="center">
                  <a href="letterlist.do?l_receiver=${ldto1.gu_email}&pnum=${map.prePageNum}">◀</a>
                  <c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" step="1">
                     <c:choose>
                        <c:when test="${pnum eq i}">
                           ${i}
                        </c:when>
                        <c:otherwise>
                           <a href="letterlist.do?l_receiver=${ldto1.gu_email}&pnum=${i}">${i}</a>
                        </c:otherwise>
                     </c:choose>   
                  </c:forEach>
                  <a href="letterlist.do?l_receiver=${ldto1.gu_email}&pnum=${map.nextPageNum}">▶</a>
               </td>
            </tr>

	<tr>
		<td colspan="5">
			<input type="submit" value="삭제" />
		</td>
	</tr>
	</c:otherwise>
	</c:choose>
</table>
</form>
</body>
</html>		


