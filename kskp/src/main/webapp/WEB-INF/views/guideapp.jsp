<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title></title>
</head>
<body>
<h1 align="center">swag 가이드회원 승인대기목록</h1>
       <table border="1" align="center">
       		<col width="80px">
			<col width="80px">
			<col width="200px">
			<col width="120px">
			<col width="200px">	
			<col width="150px">
			<tr align="center">
				
				<th>회원번호</th>
				<th>이름</th>
				<th>회원가입일자</th>
				<th>상세보기</th>
			</tr>

			<c:forEach items="${list}" var="gDto">
				<c:if test="${gDto.gu_appflag eq 0}">
			<tr align="center">
				<td>${gDto.gu_seq}</td>
				<td>${gDto.gu_name}</td>
			    <td><fmt:formatDate value="${gDto.gu_regdate}" pattern="yyyy년MM월dd일"/></td>
			    <td><button onclick="location.href='guappdetail.do?gu_seq=${gDto.gu_seq}'">상세보기</button></td>				
			</tr>
			</c:if>
			</c:forEach>
			<tr>
               <td colspan="7" align="center">
                  <a href="guideappform.do?&pnum=${map.prePageNum}">◀</a>
                  <c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" step="1">
                     <c:choose>
                        <c:when test="${pnum eq i}">
                           ${i}
                        </c:when>
                        <c:otherwise>
                           <a href="guideappform.do?&pnum=${i}">${i}</a>
                        </c:otherwise>
                     </c:choose>   
                  </c:forEach>
                  <a href="guideappform.do?&pnum=${map.nextPageNum}">▶</a>
               </td>
            </tr>
			
	</table>
</body>
</html>