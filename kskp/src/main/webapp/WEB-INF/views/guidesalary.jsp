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

#img{
width:240px;
height:160px;
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
   	  <th>수익 금액</th>  
      <th>인원수</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="4" style="text-align: center;">수익 내역이 없습니다</td>
            </tr>   
         </c:when>
         <c:otherwise>
				<c:set var="cost" value="0" />
        	 <c:set var="num" value="0" />
        	 
            <c:forEach items="${list}" var="dto">
  			<tr>
               <td><div class="image"><img id="img" src="${dto.g_img1}" onclick="goods(${dto.g_seq},${ldto1.gu_seq})"/></div></td>
	           <td>${dto.g_name}</td> 
	           <td>${dto.sumcost}</td>
	           <td>${dto.sumnum}</td>
	 		</tr>
	 		  <c:set var="cost" value="${cost + dto.sumcost}"/>
	            <c:set var="num" value="${num + dto.sumnum}"/>
            </c:forEach>
          
         </c:otherwise>
         </c:choose>
         <tr>
         <td colspan="3">총 수익</td>
         <td ><c:out value="${cost}"/></td>
         </tr>
          <tr>
         <td colspan="3">총 판매 인원수</td>
         <td ><c:out value="${num}"/></td>
         </tr>
         <tr>
         	<td colspan="3">정산 받은 금액</td>
         	<td>${nowcost}</td>
         </tr>
         
         <tr>
         <td colspan="3">정산가능금액</td>
     	<td><c:out value="${cost}"/></td>
         </tr>
         <tr>
         <td colspan="4"><button type="button" onclick="app(${ldto1.gu_seq})">송금신청</button></td>
         </tr>
</table>
<script type="text/javascript">
function app(gu_seq){
	location.href="appsalform.do?gu_seq="+gu_seq;
}
	
	function goods(g_seq,gu_seq){
		location.href="detailsal.do?g_seq="+g_seq+"&gu_seq="+gu_seq;
	}
	
</script>
</body>
</html>