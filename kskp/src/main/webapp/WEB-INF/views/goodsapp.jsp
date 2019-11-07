<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>상품관리페이지</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<style type="text/css">
#hello {
	border: soild red 1px;
}

#header {
	text-align: center;
}

#container {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}

#bar {
	padding: 20px;
}
#body {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}
	
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

}
</style>
</head>
<body>
<h1>상품 승인 관리</h1>
<table border="1">
   <col width="188px">
   <col width="50px">
   <col width="90px">
   <col width="60px">
   <col width="80px">
   <col width="110px">
   <col width="300px">
   <col width="80px">
   <col width="80px">
   <col width="50px">
   <tr>
   	  <th>여행 대표사진</th>  
   	  <th>가이드 이메일</th>
   	  <th>가이드 이름</th>
   	  <th>가이드 연락처</th>
      <th>지역</th>   
      <th>등록일</th>
      <th>상품명</th>
      <th>총판매 수</th>
      <th>승인 여부</th>
      <th>승인 확인</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="10" style="text-align: center;">---승인할 상품이 없습니다.---</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <tr>
               <td>
               <div class="image">
				<img id="img" src="${dto.g_thumbimg}" onclick="goods(${dto.g_seq})"/>
				</div>	  
               </td>
               <td>${dto.gu_email}</td>
               <td>${dto.gu_name}</td>
               <td>${dto.gu_phone}</td>
               <td>${dto.g_area}</td>
               <td><fmt:formatDate value="${dto.g_regdate}" pattern="yyyy년MM월dd일"/></td>
               <td>${dto.g_name}</td>
               <td>${dto.g_res}</td>
               <c:choose>
        	   <c:when test="${dto.g_flag eq '1'}">
               <td style="color:green;">승인 완료</td>
               <td><input type="button" value="승인취소" onclick="appNo(${dto.g_seq})"/></td>
               </c:when>
               <c:otherwise>
               <td style="color:red;">승인 대기</td>
               <td><input type="button" value="승인" onclick="app(${dto.g_seq})"/></td>
               </c:otherwise>
               </c:choose>
            </tr>   
            </c:forEach>
         </c:otherwise>
      </c:choose>
</table>
<script type="text/javascript">
function goods(g_seq){
	location.href="goodsdetail.do?g_seq="+g_seq;
}
function app(g_seq){
	location.href="goodsapp.do?g_seq="+g_seq;
}
function appNo(g_seq){
	location.href="goodsappno.do?g_seq="+g_seq;
}
</script>
</body>
</html>