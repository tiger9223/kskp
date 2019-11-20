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
      <div class="con_wrap">
         <main class='member member-verify'>
<div class='container-fluid content-wrap with-panel-title'>
<div class='panel-title-wrapper'>
<div class='panel-title'>카카오페이 결제가 정상적으로 완료되었습니다.</div>
</div>
<div class='member-panel border-top--mobile'>
<div class='panel-body'>
<div class='panel-body--phone-verification' data-panel-target='phone'>

<div class='form-wrapper'>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
결제일시
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input type="text" readonly="readonly" value="${info.approved_at">
</div>
</div>
</div>
</div>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
주문번호
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input type="text" readonly="readonly" value="${info.partner_order_id}">
</div>
</div>
</div>
</div>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
상품명
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input type="text" readonly="readonly" value="${info.item_name}">
</div>
</div>
</div>
</div>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
신청인원
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input type="text" readonly="readonly" value="${info.quantity}">
</div>
</div>
</div>
</div>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
결제금액
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input type="text" readonly="readonly" value="${info.amount.total">
</div>
</div>
</div>
</div>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
결제방법
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input type="text" readonly="readonly" value="${info.payment_method_type}">
</div>
</div>
</div>
</div>
<div class='btn-wrap'>
<form name="form" method="post">
<input type="hidden"  name="p_seq" value="${dto.p_seq}" />
<input type="hidden"  name="g_seq" value="${dto.g_seq}" />
<input type="hidden"  name="m_seq" value="${dto.m_seq}" />
<input type="hidden"  name="p_cost" value="${dto.p_cost}" />
<input type="hidden"  name="p_num" value="${dto.p_num}" />
<input type="hidden"  name="p_date" value="${dto.p_date}" />
<input type="hidden"  name="p_name" value="${dto.p_name}" />
<c:choose>
<c:when test="${dto.p_seq ne 0}">
<input type="submit" value="예약확인" onclick='return btn_click("res");'/>
</c:when>
<c:otherwise>
<input type="submit" value="확인" onclick='return btn_click("pay");'/>
</c:otherwise>
</c:choose>
</form>
<script>
function btn_click(str){
	if(str == "pay"){
			form.action="insertpay.do";
	}else if(str == "res"){
			form.action="cartpay.do";
	}
}
</script>
</div>
</div>




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