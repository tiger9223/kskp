<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>송금내역확인</h1>
<input type="hidden" name="gu_seq" value="${ldto1.gu_seq}"/>

<table border="1">
   <col width="188px">
   <col width="300px">
   <col width="70px">
   <col width="110px">
   <col width="80px">
   <col width="70px">
   <tr>
        <th>은행명</th> 
      <th>계좌번호</th>
        <th>정산받을 금액</th>  
      <th>송금신청날짜</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="4" style="text-align: center;">송금신청 내역이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
           <tr>
               <td>${dto.s_bank}</td>
              <td>${dto.s_acc}</td> 
              <td>${dto.s_gcost}</td>
              <td>${dto.s_regdate}</td>
          </tr>
            </c:forEach>
         </c:otherwise>
         </c:choose>
   
       
</table>





</body>
</html>