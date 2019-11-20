<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>SWAG</title>
   <link rel="stylesheet" href="css/reset.css">
   <link rel="stylesheet" href="css/detail.css">
   <link rel="stylesheet" href="css/jquery.bxslider.css">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="js/jquery-1.11.3.min.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhggmQMw_dzIAkkG9vIF6mTO9ZwU81z6Q&callback=initMap"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
      <script type="text/javascript" src="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.js"></script>
<!--       <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/pepper-grinder/jquery-ui.css"> -->
			<link rel="stylesheet" href="css/datepicker.css">
      <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.css">
    
  <meta content='https://d2yoing0loi5gh.cloudfront.net/assets/og-image-35b4b66874396ae2fc8991b926c1f0c09f27f25f9c0a23f15e5e96c73c2c9992.png' property='og:image'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon-precomposed'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon' sizes='76x76'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png' rel='apple-touch-icon' sizes='120x120'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png' rel='apple-touch-icon' sizes='152x152'>
<link rel="shortcut icon" type="image/x-icon" href="https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico" />

<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.bf4e3bb390d5a33b8bcf.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-de4b46d803183faabde80789fd23fd7db887a0e61571b261fc5ad239dd577c77.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-99f51610af0c83d84c5239249ae362639c556e7a37df33e2a5190e2f903c2723.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.bf4e3bb390d5a33b8bcf.css" />

   
   
   <script>
      $(document).ready(function(){
         $(".info_box").hide();
         $(".icon_box").click(function(){
            if($(this).next().css("display") == "none"){
               $(".info_box").slideDown(300);
            }else{
               $(".info_box").slideUp(300);
            }
         });

         $('.nav li:first-child').on('mouseover',function(){
				$('.under').stop(true).animate({
					left:'351px'
				},400);
			});
			$('.nav li:nth-child(2)').on('mouseover',function(){
				$('.under').stop(true).animate({
					left:'436px'
				},400);
			});
			$('.nav li:nth-child(3)').on('mouseover',function(){
				$('.under').stop(true).animate({
					left:'519px'
				},400);
			});
			$('.nav li:nth-child(4)').on('mouseover',function(){
				$('.under').stop(true).animate({
					left:'603px'
				},400);
			});
			$('.nav li:nth-child(5)').on('mouseover',function(){
				$('.under').stop(true).animate({
					left:'686px'
				},400);
			});
			$('.nav li:nth-child(6)').on('mouseover',function(){
				$('.under').stop(true).animate({
					left:'771px'
				},400);
      });

      var $win = $(window);
       var top = $(window).scrollTop();
       var speed = 'past';
       var easing = 'linear'; 
       var $layer = $('.right_con'); 
       var layerTopOffset = 0;  
       $layer.css('position', 'absolute');
    
       if (top > 0 )
           $win.scrollTop(layerTopOffset+top);
       else
           $win.scrollTop(0);
     
       $(window).scroll(function(){
           yPosition = $win.scrollTop() - 130;
           if (yPosition < 0)
           {
               yPosition = 0;
           }
           $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
       }); 



      });
      
      
      $(function(){
    	
    	  
    
    	  
    	    $("#emBtn").click(function(){
    	    	  var email = document.getElementById('em').value;
    	    	  location.href = "gsendemail.do?email="+email;
    	    });
    
      });
</script>
</head>
<body>
   <header>
      <div class="header_wrap">
			<h1>
				<a href="main.do"><img src="img/main_logo02.png" alt=""></a>
			</h1>
			<input type="text" placeholder="가이드상품을 검색해보세요!" class="text">
			<input type="submit" value="" class="button"><!--검색버튼-->
		 <c:choose>
			<c:when test="${ldto == null and ldto1 == null}">
				<ul class="top_nav">
				<li>
					<a href="servicecenter.do">고객센터</a>
				</li>
				<li>
					<a href="selectsignup.do">회원가입</a>
				</li>
				<li>
					<a href="loginform.do">로그인</a>
				</li>
			</ul>
			</c:when>
			<c:when test="${ldto.m_status eq 'M'}">
			<ul class="top_nav">
				<li>
					<a href="servicecenter.do">고객센터</a>
				</li>
				<li class="icon">
					<div class="icon_box"><img src="${ldto.m_img}" alt=""></div>
					<ul class="info_box">
						<li><a href="cartlist.do?m_seq=${ldto.m_seq}"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
						<li><a href=""><i class="fas fa-coins"></i>　내포인트　 <span> ${ldto.m_point}p</span></a></li>
						<li><a href="logout.do"><i class="fas fa-power-off"></i>　로그아웃</a></li>
					</ul>
				</li>
			</ul>
			</c:when>
			<c:when test="${ldto.m_status eq 'A'}">
			<ul class="top_nav">
				<li>
					<a href="servicecenter.do">고객센터</a>
				</li>
				<li class="icon">
					<div class="icon_box"><img src="img/info_icon.png" alt=""></div>
					<ul class="info_box">
						<li><a href="memberalllist.do"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
						<li><a href="logout.do"><i class="fas fa-power-off"></i>　로그아웃</a></li>
					</ul>
				</li>
			</ul>
			</c:when>
			<c:otherwise>
			<ul class="top_nav">
				<li>
					<a href="servicecenter.do">고객센터</a>
				</li>
				<li class="icon">
					<div class="icon_box"><img src="img/info_icon.png" alt=""></div>
					<ul class="info_box">
						<li><a href="goodspage.do?gu_seq=${ldto1.gu_seq}"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
						<li><a href="logout.do"><i class="fas fa-power-off"></i>　로그아웃</a></li>
					</ul>
				</li>
			</ul>
			</c:otherwise>
		</c:choose>	
         <ul class="nav">
           <li><a href="selectarea.do?enkey=Seoul&kokey=서울&pnum=1">서울</a></li>
				<li><a href="selectarea.do?enkey=Incheon&kokey=인천&pnum=1">인천</a></li>
				<li><a href="selectarea.do?enkey=Daejeon&kokey=대전&pnum=1">대전</a></li>
				<li><a href="selectarea.do?enkey=Daegu&kokey=대구&pnum=1">대구</a></li>
				<li><a href="selectarea.do?enkey=Busan&kokey=부산&pnum=1">부산</a></li>
				<li><a href="selectarea.do?enkey=Jeju&kokey=제주&pnum=1">제주</a></li>
         </ul>
         <span class="under"></span>
      </div>
   </header>
   <div id="<content></content>">
      <div class="con_wrap" style="height:650px;">
       <main class='member member-verify'>
<div class='container-fluid content-wrap with-panel-title'>
<input name='user_email' type='hidden' value='smc5141@nate.com'>
<div class='panel-title-wrapper'>
<div class='panel-title'>가입 마지막 단계입니다!</div>

</div>


<div class='member-panel member-panel--with-tab' style="border: 2px;">
<div class='panel-body'>
<div class='panel-body--phone-verification' data-panel-target='phone'>
<form name="send_code_form" role="form" data-validation="true" action="ginsertuser.do" accept-charset="UTF-8" method="post">
<input type="hidden" name="email" value="${dto.gu_email}">
<div class='form-wrapper tab_content' id="tab1">
<c:choose>
 <c:when test="${email == null}">
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
이메일 주소
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input class='form-control'name="email" id="em" value="${dto.gu_email}" readonly="readonly" placeholder="xxx@xxx.xxx형식" type='email'>
</div>
</div>
</div>
</div>
<div class='btn-wrap'>
<button class='btn-new btn--type-primary btn--width-100' id="emBtn"  type='button'>인증번호 보내기</button>
</div>
</c:when>
       			
<c:otherwise>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
인증번호
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input class='form-control' name="ecer" id="send" placeholder="인증번호를 입력해주세요">
</div>
</div>
</div>
</div>
<div class='btn-wrap'>
<button class='btn-new btn--type-primary btn--width-100'  id="sub"    type='submit'>인증하기</button>
</div>
</c:otherwise>
 </c:choose>
</div>
</form>


</div>


</div>
</div>

</div>
</main>

</div>
</div>

   <footer>
      <div class="footer_wrap">
         <div class="left_box">
            <p class="center">고객센터</p>
            <p class="number">010-7139-5141</p>
            <p class="sub">연중무휴</p>
            <button>메일보내기</button>
         </div>
         <div class="right_box">
            <ul>
               <li><a href="">이용 약관</a></li>
               <li><a href="">개인정보 처리방침</a></li>
               <li><a href="">취소 및 환불정책</a></li>
            </ul>
            <p class="info">상호명 : (주)SWAG | 대표 : 신민철 | 사업자등록번호 : 010-12-34567 | 주소 : 서울 특별시 금천구 독산동 한신아파트 1동 703호 | 이메일 : <a href="">smc5141@naver.com</a></p>
            <p class="copy">자사는 프로젝트를 위해 만들어진 회사이며 상표등록원에 등록되어있지 않습니다.<br>copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
         </div>
      </div>
   </footer>
</body>
</html>