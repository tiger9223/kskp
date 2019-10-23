<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript">
	//사용한 이벤트 :onload, onsubmit
	//DOM의 개념 : 탐색하는 메서드 - getElementsByTagName(), querySelectorAll() ...
	//input 태크의 입력값을 구하는 방법 : input, value
	window.onload = function() {
		var form = document.getElementsByName("form")[0];
		form.onsubmit = function() {
			var inputs = document.querySelectorAll("table input");
			
			if(inputs[3].vlaue != inputs[4].vlaue) {
				alert("비밀번호를 확인하시오.");
				inputs[3].vlaue = "";
				inputs[4].vlaue = "";
				inputs[3].focus();
				return false;
			}
		}
	}
</script>
</head>
<body>
<h1>일반회원가입</h1>
<form action="minsertuser.do" method="post">
<h2>네이버 회원가입</h2>
<p>이름</p>
<input type="text" name="m_name" placeholder="id" /><br/>
<p>이메일</p>
<input type="text" name="m_email" placeholder="email" /><br/>
<p>비밀번호</p>
<input type="password" name="m_pw" placeholder="pw" /><br/>
<p>비밀번호 확인</p>
<input type="password" name="m_pw1" placeholder="pwck" /><br/>
<input type="submit" value="회원가입">
</form>
</body>
</html>