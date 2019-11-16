<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWAG | GuideSalaryList</title>
</head>
<body>
<form action="appguidesal.do" method="post">
<h1>가이드 정산 내역</h1>
<table border="1">
   <col width="100px">
   <col width="100px">
   <col width="150px">
   <col width="150px">
   <col width="150px">
   <col width="50px">
   <tr>
      <th>가이드 이름</th>
   	  <th>은행</th>
   	  <th>계좌번호</th>  
   	  <th>정산 신청 금액</th>
      <th>정산 신청 날짜</th>
      <th>정산</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="6" style="text-align: center;">정산할 내역이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <input type="hidden" name="gu_seq" value="${dto.gu_seq}"/>
			<input type="hidden" name="s_cost" value="${dto.s_cost}"/>
			<input type="hidden" name="s_seq" value="${dto.s_seq}"/>
  			<tr>
               <td>${dto.gu_name}</td>
	           <td>${dto.s_bank}</td> 
	           <td>${dto.s_acc}</td>
	           <td>${dto.s_gcost}</td>
	           <td><f:formatDate value="${dto.s_regdate}" pattern="yyyy년MM월dd일"/></td>
	           <td><input type="submit" value="정산" /></td>
	 		</tr>
            </c:forEach>
         </c:otherwise>
         </c:choose>
</table>
</form>
</body>
</html>