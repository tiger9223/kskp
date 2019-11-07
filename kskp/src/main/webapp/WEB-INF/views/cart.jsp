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
<h1>장바구니</h1>
<form action="kakaoPay.do" method="post">
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
      <th>결제</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="6" style="text-align: center;">장바구니에 상품이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <input type="hidden" name="p_seq" value="${dto.p_name}"/>
			<input type="hidden" name="g_seq" value="${dto.g_conts}"/>
			<input type="hidden" name="m_seq" value="${dto.g_address}"/>
			<input type="hidden" name="p_cost" value="${dto.g_seq}"/>
			<input type="hidden" name="p_date" value="${dto.g_thumbimg}"/>
	            <tr>
	               <td><img id="img" src="${dto.p_img}" onclick="goods(${dto.g_seq})"/></td>
	               <td>${dto.p_name}</td>
	               <td>${dto.p_date}</td>
	               <td>${dto.p_cost}</td>
	               <td>${dto.p_num}</td>
	               <td><input type="submit" value="예약하기" onclick='return btn_click("pay");'></td> 
	            </tr>   
            </c:forEach>
         </c:otherwise>
      </c:choose>
</table>
</form>
<script type="text/javascript">
function goods(g_seq){
	location.href="goodsdetail.do?g_seq="+g_seq;
}
</script>
</body>
</body>
</html>