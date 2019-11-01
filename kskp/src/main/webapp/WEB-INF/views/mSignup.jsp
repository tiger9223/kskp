<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<title></title>
<script type="text/javascript">
	
	function check(){
		
		  var getMail = RegExp(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/);
		  var getpwCheck= RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/);
		  var getName= RegExp(/^[가-힣]+$/); 
 		  var idchk = document.getElementsByName("idchk")[0].getAttribute("class");
 		
		//이름 유효성 검사  (한글만)
		  if(!getName.test($("#m_name").val())){
		        alert("이름을 형식에 맞게 입력해주세요");
		        $("#m_name").val("");
		        $("#m_name").focus();
		        return false;
		      }	  

		    //이메일 공백 확인
	      if($("#m_email").val() == ""){
	        alert("이메일을 입력해주세요");
	        $("#m_email").focus();
	        return false;
	      }
	           
		    
	    //이메일 유효성 검사
	      if(!getMail.test($("#m_email").val())){
	        alert("이메일형식에 맞게 입력해주세요")
	        $("#m_email").val("");
	        $("#m_email").focus();
	        return false;
	      }
		  
		  //비밀번호 유효성검사
	      if(!getpwCheck.test($("#m_pw").val())) {
	      alert("비밀번호를 형식에 맞춰서  입력해주세요");
	      $("#m_pw").val("");
	      $("#m_pwchk").val("");
	      $("#m_pw").focus();
	      return false;
	      }
	 
	   
 	      //비밀번호 일치여부
 	      if($("#m_pw").val() != ($("#m_pwchk").val())){ 
 	      alert("비밀번호가 일치하지 않습니다.");
 	      $("#m_pwchk").val("");
	      $("#m_pwchk").focus();
	      return false;
	     }
 	      
 	      //회원가입 시 중복체크 확인여부
  	      if(idchk!='y'){
  	    	  alert("중복체크를 확인하세요.");  	    	 
  	    	  return false;
	      }
 	      
	return true;	  
	}
	
	//아이디 중복검사 창
	function idChk() {
		var m_email = document.getElementsByName("m_email")[0].value;
		//open("url", "title", "창의 속성 설정")
		if(m_email==""){
			alert("이메일을 입력해주세요.");
		}else{
		window.open("idChk.do?m_email="+m_email,"check","width=300px, height=300px");
		}
	}
	
	

	
	
	
	
	
	
	
</script>
</head>
<body>
<h1>일반회원가입</h1>
<form onsubmit="return check()" action="emailcerform.do" method="post">
<h2>네이버 회원가입</h2>
<p>이름</p>
<input type="text" name="m_name" id="m_name" placeholder="이름(한글만가능)" />
<br/>
<p>이메일
<input type="text" name="m_email" id="m_email" placeholder="email@email.com" class="n" />
<input type="button" name="idchk" value="중복체크" onclick="idChk()" class="n" ><br/>
<p>비밀번호</p>
<input type="password" name="m_pw" id="m_pw" style="width:250px" placeholder="문자+숫자+특수문자 포함 8~16자 이내"/><br/>
<p>비밀번호 확인</p>
<input type="password" name="m_pwchk" id="m_pwchk" placeholder="비밀번호확인" /><br/>
<input type="submit"  value="회원가입" />
</form>
</body>
</html>