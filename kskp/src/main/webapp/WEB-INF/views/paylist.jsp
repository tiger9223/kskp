<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.image { overflow: hidden; }

.image  img {
    -webkit-transform:scale(1);
    -moz-transform:scale(1);
    -ms-transform:scale(1); 
    -o-transform:scale(1);  
    transform:scale(1);
    -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
    transition:.3s;
}
.image:hover img {
    -webkit-transform:scale(1.2);
    -moz-transform:scale(1.2);
    -ms-transform:scale(1.2);   
    -o-transform:scale(1.2);
    transform:scale(1.2);
}
</style>
<title>paylist</title>
</head>
<body>
<h1>결제내역</h1>
<table border="1">
   <col width="188px">
   <col width="300px">
   <col width="70px">
   <col width="110px">
   <col width="80px">
   <col width="70px">
   <tr>
   	  <th></th> 
      <th>상품명</th>
      <th>투어날짜</th>
   	  <th>가격</th>  
      <th>인원수</th>
      <th>후기</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="6" style="text-align: center;">결제 내역이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <tr>
               <td><div class="image"><img id="img" src="${dto.p_img}" onclick="goods(${dto.g_seq})"/></div></td>
	           <td>${dto.p_name}</td>
	           <td>${dto.p_date}</td>
	           <td>${dto.p_cost}</td>
	           <td>${dto.p_num}</td>
	           <td></td>
            </tr>   
            </c:forEach>
         </c:otherwise>
         </c:choose>
</table>
<script type="text/javascript">
function goods(g_seq){
	location.href="goodsdetail.do?g_seq="+g_seq;
}
</script>
</body>
</html>