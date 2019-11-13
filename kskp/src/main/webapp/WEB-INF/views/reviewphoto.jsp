<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


</head>
<body>

<h1>결제내역</h1>
<table border="1">
   <col width="500px">
   <tr>
   	  <th>이미지</th> 
   </tr>
      <c:choose>
         <c:when test="${empty slist}">
            <tr>
               <td colspan="6" style="text-align: center;">사진이</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${slist}" var="img" >
            <tr>
               <td><img id="img" src="${img}"></td>
	         </tr>	
            </c:forEach>
         </c:otherwise>
         </c:choose>
</table>
	





</body>
</html>