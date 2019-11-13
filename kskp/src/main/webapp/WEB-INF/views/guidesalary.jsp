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
<title>guidesalary</title>
</head>
<body>
<h1>수익내역</h1>
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
      <th>결제날짜</th>
   	  <th>가격</th>  
      <th>인원수</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="5" style="text-align: center;">수익 내역이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <tr>
               <td><div class="image"><img id="img" src="${dto.g_thumbimg}" onclick="goods(${dto.g_seq})"/></div></td>
	           <td>${dto.p_name}</td>
	           <td><f:formatDate value="${dto.p_regdate}" pattern="yyyy년MM월dd일"/></td>
	           <td>${dto.p_cost}</td>
	           <td>${dto.p_num}</td>
            </tr>   
            </c:forEach>
         </c:otherwise>
         </c:choose>
         <tr>
         <td colspan="5"><button>송금신청</button></td>
         </tr>
</table>
<script type="text/javascript">
function goods(g_seq){
	location.href="goodsdetail.do?g_seq="+g_seq;
}
</script>
</body>
</html>