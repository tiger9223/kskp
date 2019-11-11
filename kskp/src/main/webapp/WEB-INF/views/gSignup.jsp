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
      height: 1300px;
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

</script>

</head>
<body>
<div class="log_wrap">
      <h1>
         <a href="main.do">
            <img src="img/logo.png" alt="">
         </a>
      </h1>


<form onsubmit="return check()" action="gemailcerform.do" method="post" enctype="multipart/form-data">

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
<div class="notice" id="back_check"></div>

<p class="title">계좌번호</p>
<input type="text" id="gu_acc" class="text" name="gu_acc" placeholder="- 없이 입력해주세요" />
<div class="notice" id="acc_check"></div>

<p class="title">사진</p>
<input type="file" name="file" class="text" onchange="previewImage(this,'img_check')">
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