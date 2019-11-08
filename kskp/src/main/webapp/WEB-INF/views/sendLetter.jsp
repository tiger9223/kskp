<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<title></title>
</head>
<style>
 @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
  .notice{
      width: 390px;
      margin: 0 auto;
      padding-left: 10px;
      font-size: 12px;
      padding-top: 5px;
   }
</style>
<body>
<c:if test="${msg != null}">
	<script type="text/javascript">
		alert("${msg}"); 
	</script>
</c:if>

<script type="text/javascript">
$(function(){
	
	 var getMail = RegExp(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/);
$("#l_receiver").blur(function(){
	// id = "id_reg" / name = "userId"
	var m_email = $('#l_receiver').val();
	$.ajax({
		url : '${pageContext.request.contextPath}/emailCheck.do?email='+ m_email,
		type : 'get',
		success : function(data) {
			console.log("1 = 중복o / 0 = 중복x : "+ data);		
			if(m_email == ""){
				
				$('#id_check').text('이메일을 입력해주세요 :)');
				$('#id_check').css('color', 'red');		
				$("#sub").attr("disabled", true);
			}
			else if(data == 0){
				$("#id_check").text("없는 이메일 입니다 . 확인바랍니다. ");
				$("#id_check").css("color", "green");
				$("#sub").attr("disabled", true);
				if(!getMail.test(m_email)){
					// 0 : 아이디 길이 / 문자열 검사
					$("#id_check").text("이메일 형식으로 입력해주세요. ");
					$("#id_check").css("color", "red");
					$("#sub").attr("disabled", true);
				}
			}else if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#id_check").text(" ");
					$("#id_check").css("color", "red");
					$("#sub").attr("disabled", false);
				}else{
				}
			}, 
			error : function() {
					console.log("실패");
			}
					  });
   	 });

 });

   	 
   	 
   	 
   	 
   	 
   	 
</script>



<form action="sendletter.do" method="post">		
<p>보내는 사람 : 
	<c:choose>
	<c:when test="${ldto.m_status eq 'M'}">
	<input type="hidden" name="seq" value="${ldto.m_seq}" />
		<input type="hidden" name="l_sender" value="${ldto.m_email}">
		${ldto.m_email}
	</c:when>
	<c:when test="${ldto.m_status eq 'A'}">
		<input type="hidden" name="l_sender" value="${ldto.m_email}">
		${ldto.m_email}
	</c:when>
	<c:otherwise>	
		<input type="hidden" name="seq" value="${ldto1.gu_seq}" />
		<input type="hidden" name="l_sender" value="${ldto1.gu_email}">
		${ldto1.gu_email}
	</c:otherwise>
	</c:choose></p>
<p>받는 사람 : <input type="text" name="l_receiver" id="l_receiver" placeholder="상대방이메일을 입력하세요">
<div class="notice" id="id_check"></div>
<p>제목 : <input type="text" name="l_title" placeholder="제목을 입력하세요"></p>
<p>내용 : <textarea cols="30" rows="3" name="l_conts" placeholder="내용을 입력하세요"></textarea></p>
<input type="submit" id="sub" value="보내기"><input type="button" value="취소" onclick="history.back(-1);"> 
</form>
</body>
</html>