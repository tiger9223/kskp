<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<title></title>
<style>
   @import url('https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap');
*{
      margin: 0;
      padding: 0;
      font-family: 'Nanum Gothic', sans-serif;
   }
   li{
      list-style: none;
   }
   a{
      text-decoration: none;
      color: #666;
   }
   img{
      border: 0;
   }
   body{
      background-color: #ededed;
   }
   .log_wrap{
      width: 600px;
      height: 700px;
      margin: 0 auto;
      margin-top: 70px;
   }
   h1{
      width: 250px;
      height: auto;
      margin: 0 auto;
      margin-bottom: 10px;
   }
   h1 img{
      width: 100%;
   }
   .text{
      display: block;
      width: 390px;
      height: 50px;
      margin: 0 auto;
      margin-top: 10px;
      padding-left: 10px;
      border: 1px solid #ccc;
   }
   .title{
      width: 390px;
      padding-left: 10px;
      margin: 0 auto;
      margin-top: 25px;
      font-size: 18px;
      font-weight: bold;
   }
   .notice{
      width: 390px;
      margin: 0 auto;
      padding-left: 10px;
      font-size: 12px;
      padding-top: 5px;
   }
   .button{
      width: 400px;
      height: 50px;
      background-color: #1b3371;
      border: 0;
      color: #fff;
      font-size: 18px;
      margin: 0 auto;
      margin-top: 40px;
      display: block;
      cursor: pointer;
   }
   footer ul{
      width: 600px;
      height: 30px;
      margin: 0 auto;
      margin-top: 50px;
   }
   footer li{
      float: left;
      font-size: 13px;
   }
   footer li:first-child{
      padding-left: 33px;
   }
   footer li::after{
      content: '|';
      color: #666;
      padding-left: 25px;
      padding-right: 25px;
   }
   footer li:last-child::after{
      content: '';
      padding-right: 0px;   
  }
   .copy{
      text-align: center;
      margin-top: 20px;
      font-size: 12px;
   }
   footer img{
      width: 50px;
      height: auto;
      margin-right: 5px;
      margin-bottom: -5px;
   }
</style>
<script type="text/javascript">
var namecheck;
var emailcheck;
var pwcheck;
var pwchkcheck;
	



function namecheckfun(){
    var getName= RegExp(/^[가-힣]+$/); 
	var m_name = $("#m_name").val();
	if(m_name == ""){
		$('#name_check').text('이름을 입력해주세요 :)');
		$('#name_check').css('color', 'red');		
		$("#reg_submit").attr("disabled", true);
		namecheck = false;
	}else if(!getName.test(m_name)){
		$("#name_check").text("이름을 한글로만 형식에 맞게 입력해주세요. ");
		$("#name_check").css("color", "red");
		$("#reg_submit").attr("disabled", true);
		namecheck = false;
	}else{
		$("#name_check").text("멋진 이름입니다.");
		$("#name_check").css("color", "green");
		$("#reg_submit").attr("disabled", false);
		namecheck = true;
	} 
	 
	
}

function pwcheckfun(){
	var getpwCheck= RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/);
	var m_pw = $("#m_pw").val();
	if(m_pw == ""){
		$('#pw_check').text('비밀번호를 입력해주세요 :)');
		$('#pw_check').css('color', 'red');		
		$("#reg_submit").attr("disabled", true);
		pwcheck = false;
	}else if(!getpwCheck.test(m_pw)){
		$("#pw_check").text("비밀번호를 문자+숫자+특수문자 포함 8~16자 이내로 입력해주세요. ");
		$("#pw_check").css("color", "red");
		$("#reg_submit").attr("disabled", true);
		pwcheck = false;
	}else{
		$("#pw_check").text("안전합니다! ");
		$("#pw_check").css("color", "green");
		$("#reg_submit").attr("disabled", false);
		pwcheck = true;
	} 
	
	
}

function pwchkcheckfun(){
	var m_pw = $("#m_pw").val();
	var m_pwchk = $("#m_pwchk").val();
	if(m_pwchk == ""){
		$('#pwchk_check').text('확인비밀번호를 입력해주세요 :)');
		$('#pwchk_check').css('color', 'red');		
		$("#reg_submit").attr("disabled", true);
		pwchkcheck = false;
	}else if(m_pw != m_pwchk && m_pwchk != ""){
		$("#pwchk_check").text("비밀번호가 일치하지 않습니다. ");
		$("#pwchk_check").css("color", "red");
		$("#reg_submit").attr("disabled", true);
		pwchkcheck = false;
	}else{
		$("#pwchk_check").text("일치합니다!");
		$("#pwchk_check").css("color", "green");
		$("#reg_submit").attr("disabled", false);
		pwchkcheck = true;
	} 
}


function emailcheckfun(){
	var getMail = RegExp(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/);
	var m_email = $('#m_email').val();
	$.ajax({
		url : '${pageContext.request.contextPath}/emailCheck.do?email='+ m_email,
		type : 'get',
		success : function(data) {
			console.log("1 = 중복o / 0 = 중복x : "+ data);		
			if(m_email == ""){
				
				$('#id_check').text('이메일을 입력해주세요 :)');
				$('#id_check').css('color', 'red');		
				$("#reg_submit").attr("disabled", true);
				emailcheck = false;
			}
			else if(data == 0){
				$("#id_check").text("멋진 아이디입니다! ");
				$("#id_check").css("color", "green");
				$("#reg_submit").attr("disabled", false);
				emailcheck = true;
				if(!getMail.test(m_email)){
					// 0 : 아이디 길이 / 문자열 검사
					$("#id_check").text("이메일 형식으로 입력해주세요. ");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", true);
					emailcheck = false;
				}
			}else if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#id_check").text("이미 사용중인 이메일입니다 ");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", true);
					emailcheck = false;
				}
	
			}, 
			error : function() {
					console.log("실패");
			}
					  });
   	 }


$(function(){	    	          		
    $("#m_name").blur(function(){
    	namecheckfun();
    });
	
    $("#m_pw").blur(function(){
    	pwcheckfun();
    });
    
    $("#m_pwchk").blur(function(){
    	pwchkcheckfun();
    	
    });		
   $("#m_email").blur(function(){
	   emailcheckfun();

});	
	$("form").submit(function(){
		
		if(namecheck && emailcheck && pwcheck && pwchkcheck ){
			alert("789");
			return true;
		}else{
			emailcheckfun();
			pwcheckfun();
			pwchkcheckfun();
			namecheckfun();
			
			if(namecheck && emailcheck && pwcheck && pwchkcheck ){
				return true;
			}else{
				return false;
			}
		}
	});
   
});
</script>
</head>
<body>
<div class="log_wrap">
      <h1>
         <a href="main.do">
            <img src="img/logo.png" alt="">
         </a>
      </h1>

<form action="emailcerform.do" method="post">

   <p class="title">이름</p>
   <input type="text" name="m_name" class="text" id="m_name" placeholder="이름(한글만가능)" />
   <div class="notice" id="name_check"></div>
   <p class="title" >이메일</p>
   <input type="text" name="m_email" id="m_email" placeholder="email@email.com" class="text" />
   <div class="notice" id="id_check"></div>
   <p class="title">비밀번호</p>
   <input type="password" name="m_pw" id="m_pw" class="text" placeholder="문자+숫자+특수문자 포함 8~16자 이내"/>
   <div class="notice" id="pw_check"></div>
   <p class="title">비밀번호 확인</p>
   <input type="password" name="m_pwchk" class="text" id="m_pwchk" placeholder="비밀번호확인" />
   <div class="notice" id="pwchk_check"></div>
   <input type="submit"  id="reg_submit" class="button"  value="회원가입" />
</form>
</div>
<footer>
      <ul>

         <li><a href="conditions.do">이용약관</a></li>
         <li><a href="privacy.do">개인정보처리방침</a></li>
         <li><a href="responsibility.do">책임의 한계와 법적고지</a></li>
         <li><a href="">고객센터</a></li>

      </ul>
      <p class="copy"><img src="img/logo.png" alt=""> copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
   </footer>
</body>
</html>