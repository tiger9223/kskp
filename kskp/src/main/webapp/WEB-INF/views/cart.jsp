<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>cartlist</title>
</head>
<body>
<table border="1">
   <col width="188px">
   <col width="300px">
   <col width="70px">
   <col width="110px">
   <col width="80px">
   <tr>
   	  <th></th> 
      <th>상품명</th>
      <th>투어날짜</th>
   	  <th>가격</th>  
      <th>인원수</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="6" style="text-align: center;">장바구니에 상품이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
	            <tr>
	               <td><img id="img" src="${dto.p_img}" onclick="goods(${dto.g_seq})"/></td>
	               <td>${dto.p_name}</td>
	               <td>${dto.p_date}</td>
	               <td>${dto.p_cost}</td>
	               <td>${dto.p_num}</td> 
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
</body>
</html>