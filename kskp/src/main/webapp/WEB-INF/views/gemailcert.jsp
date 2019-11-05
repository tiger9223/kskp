<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<title></title>

<script type="text/javascript">
$(function () {

  
    $("#emBtn").click(function(){
    	  var email = document.getElementById('em').value;
    	location.href = "gsendemail.do?email="+email;
    });



});
</script>
</head>
<body>
<div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">이메일 인증1</li>
    </ul>
    <div class="tab_container">
        <div id="tab1" class="tab_content">
       	<form action="ginsertuser.do" method="post">
       	<input type="hidden" name="email" value="${dto.gu_email}">
       		<c:choose>
       			<c:when test="${email == null}">
       				<input type="email" name="email" id="em" value="${dto.gu_email}" readonly="readonly" placeholder="xxx@xxx.xxx형식"  />
       				<input type="button" id="emBtn" value="인증번호 보내기" ><br/>
          			
       			</c:when>
       			
       			<c:otherwise>
       				<input type="text" name="ecer" id="send" placeholder="인증번호를 입력해주세요"  >
          			<input type="submit" id="sub" value="인증하기" >
       			</c:otherwise>
       		</c:choose>
        	
          	</form>
        </div>
    <!-- .tab_container -->
</div>
</div>
<!-- #container -->
</body>
<script type="text/javascript">
// function phonesend(){
// 	document.getElementById("send").style.display=='block';
// }
</script>
</html>