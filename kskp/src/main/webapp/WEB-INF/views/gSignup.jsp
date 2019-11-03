<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script type="text/javascript">
	
	function check(){
		
		  var getMail = RegExp(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/);
		  var getpwCheck= RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/);
		  var getName= RegExp(/^[가-힣]+$/); 
 		  var idchk = document.getElementsByName("idchk")[0].getAttribute("class");
 		
		//이름 유효성 검사  (한글만)
		  if(!getName.test($("#gu_name").val())){
		        alert("이름을 형식에 맞게 입력해주세요");
		        $("#gu_name").val("");
		        $("#gu_name").focus();
		        return false;
		      }	  

		    //이메일 공백 확인
	      if($("#gu_email").val() == ""){
	        alert("이메일을 입력해주세요");
	        $("#gu_email").focus();
	        return false;
	      }
	           
		    
	    //이메일 유효성 검사
	      if(!getMail.test($("#gu_email").val())){
	        alert("이메일형식에 맞게 입력해주세요")
	        $("#gu_email").val("");
	        $("#gu_email").focus();
	        return false;
	      }
		  
		  //비밀번호 유효성검사
	      if(!getpwCheck.test($("#gu_pw").val())) {
	      alert("비밀번호를 형식에 맞춰서  입력해주세요");
	      $("#gu_pw").val("");
	      $("#gu_pwchk").val("");
	      $("#gu_pw").focus();
	      return false;
	      }
	 
	   
 	      //비밀번호 일치여부
 	      if($("#gu_pw").val() != ($("#gu_pwchk").val())){ 
 	      alert("비밀번호가 일치하지 않습니다.");
 	      $("#gu_pwchk").val("");
	      $("#gu_pwchk").focus();
	      return false;
	     }
 	      
 	      //은행공백
 	     if($("#gu_bank").val() == ""){
 	        alert("은행명을 입력해주세요");
 	        $("#gu_bank").focus();
 	        return false;
 	      }
 	           
 	    //은행계좌 공백
 	     if($("#gu_acc").val() == ""){
 	        alert("은행계좌를 입력해주세요");
 	        $("#gu_acc").focus();
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
		var gu_email = document.getElementsByName("gu_email")[0].value;
		//open("url", "title", "창의 속성 설정")
		if(gu_email==""){
			alert("이메일을 입력해주세요.");
		}else{
		window.open("idChk1.do?gu_email="+gu_email,"check","width=300px, height=300px");
		}
	}
	
</script>

</head>
<body>
<h1>가이드 회원가입</h1>
<form onsubmit="return check()" action="ginsertuser.do" method="post">
<p>이름 : <input type="text" id="gu_name" name="gu_name" placeholder="id" /></p>
<p>이메일 : <input type="text" id="gu_email" name="gu_email" placeholder="email" class="n"/>
<input type="button" name="idchk" value="중복체크" onclick="idChk()" class="n" ></p>
<p>비밀번호 : <input type="password" id="gu_pw" name="gu_pw" placeholder="pw" /></p>
<p>비밀번호 확인 : <input type="password" id="gu_pwchk" name="gu_pwchk" placeholder="pwchk" /></p>
<p>휴대폰 : <input type="text" id="gu_phone" name="gu_phone" placeholder="telephone" /><input type="button" value="인증하기"></p>
<p>은행 : <input type="text" id="gu_bank" name="gu_bank" placeholder="bank" /></p>
<p>계좌번호 : <input type="text" id="gu_acc" name="gu_acc" placeholder="account" /></p>
<p>가이드사진 <input type="button" name="gu_img" value="첨부하기"></p>
<input type="submit" value="회원가입">
</form>
</body>
</html>