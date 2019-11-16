<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
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
   footer {
 	  position: relative;
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
   
   #wrap {
/*    		display: block; */
/*      	margin: 0 auto; */
/*     	margin-top: 10px; */
/*     	padding-left: 10px; */
/* 		resize:none; */
/* 		line-height:30px; */
/* 		width:300px; */
/* 		overflow-y:hidden; */
/* 		height:50px; */
/* 		border:1px solid #ccc; */
/* 		position: relative; */
      display: block;
      width: 390px;
      height: 50px;
      margin: 0 auto;
      margin-top: 10px;
      padding-left: 10px;
      border: 1px solid #ccc;
      resize:none;
      overflow-y:hidden;
	}
</style>
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<script type="text/javascript">	
		function previewImage(targetObj, img_check) {
		var preview = document.getElementById(img_check); //div id
		var ua = window.navigator.userAgent;
	  //ie일때(IE8 이하에서만 작동)
		if (ua.indexOf("MSIE") > -1) {
			targetObj.select();
			try {
				var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
				var ie_preview_error = document.getElementById("ie_preview_error_" + img_check);


				if (ie_preview_error) {
					preview.removeChild(ie_preview_error); //error가 있으면 delete
				}

				var img = document.getElementById(img_check); //이미지가 뿌려질 곳

				//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
			} catch (e) {
				if (!document.getElementById("ie_preview_error_" + img_check)) {
					var info = document.createElement("<p>");
					info.id = "ie_preview_error_" + img_check;
					info.innerHTML = e.name;
					preview.insertBefore(info, null);
				}
			}
	  //ie가 아닐때(크롬, 사파리, FF)
		} else {
			var files = targetObj.files;
			for ( var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
				if (!file.type.match(imageType))
					continue;
				var prevImg = document.getElementById("prev_" + img_check); //이전에 미리보기가 있다면 삭제
				if (prevImg) {
					preview.removeChild(prevImg);
				}
				var img = document.createElement("img"); 
				img.id = "prev_" + View_area;
				img.classList.add("obj");
				img.file = file;
				img.style.width = '100px';
				img.style.height = '150px';
				preview.appendChild(img);
				if (window.FileReader) { // FireFox, Chrome, Opera 확인.
					var reader = new FileReader();
					reader.onloadend = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);
					reader.readAsDataURL(file);
				} else { // safari is not supported FileReader
					//alert('not supported FileReader');
					if (!document.getElementById("sfr_preview_error_"
							+ img_check)) {
						var info = document.createElement("p");
						info.id = "sfr_preview_error_" + img_check;
						info.innerHTML = "not supported FileReader";
						preview.insertBefore(info, null);
					}
				}
			}
		}
	}
	var acccheck;
	var bankcheck;
	var namecheck;
	var emailcheck;
	var phonecheck;
	var pwcheck;
	var pwchkcheck;
	var imgcheck;
		
	function acccheckfun(){
	    var getAcc= /[^0-9]/g;
	  	var gu_acc = $("#gu_acc").val();
    	if(gu_acc == ""){
    		$('#acc_check').text('계좌번호를 입력해주세요 :)');
			$('#acc_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			acccheck= false;
    	}else if(getAcc.test(gu_acc)){
    		$("#acc_check").text(" -없이 정확히 입력해주세요 ");
			$("#acc_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
			acccheck= false;
    	}else{
    		$("#acc_check").text("감사합니다.");
			$("#acc_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			acccheck= true;
    	} 
    	 
	}
	function bankcheckfun(){
    	var gu_bank = $("#gu_bank").val();
    	if(gu_bank == ""){
    		$('#bank_check').text('은행명을 입력해주세요 :)');
			$('#bank_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			bankcheck = false;
    	}else{
    		$("#bank_check").text("감사합니다");
			$("#bank_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			bankcheck = true;
    	} 
    	 
	}
	
	function phonecheckfun(){
	    var getPhone = /^\d{3}\d{3,4}\d{4}$/;
    	var gu_phone = $("#gu_phone").val();
    	if(gu_phone == ""){
    		$('#phone_check').text('핸드폰번호를 입력해주세요 :)');
			$('#phone_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			phonecheck = false;
    	}else if(!getPhone.test(gu_phone)){
    		$("#phone_check").text(" -없이 010xxx(x)yyyy방식으로 입력해주세요 ");
			$("#phone_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
			phonecheck = false;
    	}else{
    		$("#phone_check").text("정상적인 번호입니다");
			$("#phone_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			phonecheck = true;
    	} 
    	 
	}
	
	function namecheckfun(){
	    var getName= RegExp(/^[가-힣]+$/); 
    	var gu_name = $("#gu_name").val();
    	if(gu_name == ""){
    		$('#name_check').text('이름을 입력해주세요 :)');
			$('#name_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			namecheck = false;
    	}else if(!getName.test(gu_name)){
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
    	var gu_pw = $("#gu_pw").val();
    	if(gu_pw == ""){
    		$('#pw_check').text('비밀번호를 입력해주세요 :)');
			$('#pw_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			pwcheck = false;
    	}else if(!getpwCheck.test(gu_pw)){
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
    	var gu_pw = $("#gu_pw").val();
    	var gu_pwchk = $("#gu_pwchk").val();
    	if(gu_pwchk == ""){
    		$('#pwchk_check').text('확인비밀번호를 입력해주세요 :)');
			$('#pwchk_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			pwchkcheck = false;
    	}else if(gu_pw != gu_pwchk && gu_pwchk != ""){
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
	
	function imgcheckfun(){
    	var gu_img = $("#gu_img").val();
    	if(gu_img == ""){
    		$('#img_check').text('사진을 첨부해주세요 :)');
			$('#img_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			imgcheck = false;
    	 }else{
	    		$("#img_check").text("멋지십니다!");
				$("#img_check").css("color", "green");
				$("#reg_submit").attr("disabled", false);
				imgcheck = true;
	    	} 
	}
	
	function emailcheckfun(){
		var getMail = RegExp(/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/);
		var gu_email = $('#gu_email').val();
		$.ajax({
			url : '${pageContext.request.contextPath}/emailCheck.do?email='+ gu_email,
			type : 'get',
			success : function(data) {
				console.log("1 = 중복o / 0 = 중복x : "+ data);		
				if(gu_email == ""){
					
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
					if(!getMail.test(gu_email)){
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
	    $("#gu_acc").blur(function(){
	    	acccheckfun();	    			    	
		    });
	        
	    $("#gu_bank").blur(function(){
	    	bankcheckfun();	    		    	
	    });
	    	    
	    $("#gu_phone").blur(function(){
	    	phonecheckfun();    		    	
	    });
			
	    $("#gu_name").blur(function(){
	    	namecheckfun();
	    });
		
	    $("#gu_pw").blur(function(){
	    	pwcheckfun();
	    });
	    
	    $("#gu_pwchk").blur(function(){
	    	pwchkcheckfun();
	    	
	    });		
		
	    $("#gu_img").blur(function(){
	    	imgcheckfun();
	    });
	    
	    
	   $("#gu_email").blur(function(){
		   emailcheckfun();

	});	
    	$("form").submit(function(){
    		
    		if(acccheck && bankcheck && namecheck && emailcheck && phonecheck && pwcheck && pwchkcheck && imgcheck){
    			alert("789");
    			return true;
    		}else{
    			emailcheckfun();
    			pwcheckfun();
    			pwchkcheckfun();
    			namecheckfun();
    			acccheckfun();
    			phonecheckfun();
    			bankcheckfun();
    			imgcheckfun();
    			
    			if(acccheck && bankcheck && namecheck && emailcheck && phonecheck && pwcheck && pwchkcheck && imgcheck){
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


<form action="gemailcerform.do" method="post" enctype="multipart/form-data">

<p class="title">이름</p>
<input type="text" id="gu_name" class="text" name="gu_name" placeholder="이름(한글만가능)" />
<div class="notice" id="name_check"></div>

<p class="title" >이메일</p> 
<input type="text" id="gu_email" class="text" name="gu_email" placeholder="email@email.com" >
<div class="notice" id="id_check"></div>

<p class="title">비밀번호</p>
<input type="password" id="gu_pw" class="text" name="gu_pw" placeholder="문자+숫자+특수문자" />
<div class="notice" id="pw_check"></div>

 <p class="title">비밀번호 확인</p>
 <input type="password" id="gu_pwchk" class="text" name="gu_pwchk" placeholder="비밀번호확인" />
<div class="notice" id="pwchk_check"></div>

<p class="title">핸드폰 번호</p>
<input type="text" id="gu_phone" class="text"  name="gu_phone" placeholder="-없이 입력해주세요" />
<div class="notice" id="phone_check"></div>

<p class="title">은행명</p>
<input type="text" id="gu_bank" class="text" name="gu_bank" placeholder="은행명" />
<div class="notice" id="bank_check"></div>

<p class="title">계좌번호</p>
<input type="text" id="gu_acc" class="text" name="gu_acc" placeholder="- 없이 입력해주세요" />
<div class="notice" id="acc_check"></div>

<p class="title">사진</p>
<input type="file" name="file" id="gu_img" class="text" onchange="previewImage(this,'img_check')">
<div class="notice" id="img_check"></div>

<p class="title">자기소개</p>
<textarea id="wrap" onkeyup="this.style.height='50px'; this.style.height = this.scrollHeight + 'px';" type="text" name="g_conts" ></textarea>
<div class="notice" id="img_check"></div>

<input type="submit" id="reg_submit" class="button" value="회원가입">
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