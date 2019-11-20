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
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-cf4a922a2252fa7cbbecf66e30e4a963909a19be58a6b6c2bb2227588d1eabfb.js"></script>
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.bf4e3bb390d5a33b8bcf.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application_template-de4b46d803183faabde80789fd23fd7db887a0e61571b261fc5ad239dd577c77.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-99f51610af0c83d84c5239249ae362639c556e7a37df33e2a5190e2f903c2723.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.bf4e3bb390d5a33b8bcf.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.bf4e3bb390d5a33b8bcf.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.bf4e3bb390d5a33b8bcf.js"></script>
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-d38fbe31c8a51b0589eb4c67815cae42af3b69bbb57dcaec22ac41d4922fa8a0.css" />
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/application-fc018907ca75ba5129e6a59958f7264b3cc3307d9af418ba31e622e260515402.js"></script>
<script src="//maps.googleapis.com/maps/api/js?key=AIzaSyDfW8RFpx4thvW5Rr8Euvnzo2y-TXzq4Cw&amp;libraries=places&amp;language=ko" async="async" defer="defer"></script>
<script src="//cdn.ravenjs.com/3.24.2/raven.min.js" async="async" defer="defer" onload="initRaven()"></script>
   
   
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
      <div class="con_wrap" style="height:1000px;">
       <main class='member member-verify'>
<div class='container-fluid content-wrap with-panel-title'>
<input name='user_email' type='hidden' value='smc5141@nate.com'>
<div class='panel-title-wrapper'>
<div class='panel-title'>가입 마지막 단계입니다!</div>
<div class='panel-desc'>휴대폰 인증 또는 이메일 인증을 완료해주세요.<br/>인증을 완료하시면 <span class="text-blue">3,000원 할인쿠폰</span>을 드립니다.<br/></div>
</div>
<div class='member-panel-tabs clearfix'>
<div class='tab active' data-tab-target='phone'>휴대폰 인증</div>
<div class='tab' data-tab-target='email'>이메일 인증</div>
</div>
<div class='member-panel member-panel--with-tab'>
<div class='panel-body'>
<div class='panel-body--phone-verification' data-panel-target='phone'>
<form name="send_code_form" role="form" data-validation="true" action="/users/send_code" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="cF/gc5HH490BXo5PPQJmpRmtmd6db6g6He0fGbLAYY+Ut0kNn2rcLwGOEvt30DYlcEz+PXL3slHNMBxP+bFxwg==" />
<input name='user[id]' type='hidden' value='2780020'>
<div class='form-wrapper'>

<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
휴대폰 번호
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input class='form-control' name='user[phone_number]' placeholder='- 없이 작성해주세요.' title='휴대폰 번호' type='tel'>
</div>
</div>
</div>
</div>
<div class='btn-wrap'>
<button class='btn-new btn--type-primary btn--width-100' data-gtm-action='문자로 인증번호 보내기' data-gtm-category='통합인증' disabled id='send-verify-code-btn' type='submit'>문자로 인증번호 보내기</button>
</div>
</div>
</form>

<form name="verify_form" class="hidden" role="form" data-validation="true" data-nextpath="/users/verifications/verified?type=phone_new" data-is-invite="false" action="/users/verify" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="6CKoMB+I5qb34TLsHcYh14ciefGuAx2On5/+5XUIerwMygFOESXZVPcxrlhXFHFX7sMeEkGbB+VPQv2zPnlq8Q==" />
<input name='user[id]' type='hidden' value='2780020'>
<div class='form-wrapper'>
<div class='content-wrapper'>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-title'>
인증코드
</div>
</div>
<div class='row'>
<div class='col-xs-12'>
<input class='form-control' name='user[verify_code]' title='인증번호' type='text'>
</div>
</div>
</div>
<div class='form-group'>
<div class='content-title-box'>
<div class='sub-message'>
인증번호를 받지 못하셨나요?
<span class='resend' id='resendCode'>인증번호 다시 보내기</span>
</div>
</div>
</div>
</div>
<div class='btn-wrap'>
<button class='btn-new btn--type-primary btn--width-100 mobile-mg-rm' data-gtm-action='인증하기' data-gtm-category='통합인증' disabled='disabled' id='verify-btn' type='submit'>인증하기</button>
</div>
</div>
</form>

</div>

<div class='hidden panel-body--email-verification' data-panel-target='email'>
<form name="send_email_form" role="form" data-validation="true" action="/users/send_email" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="Zn/QfOvILP5IAElIxu5ETc++HproQEI9GpusNlSUabeCl3kC5WUTDEjQ1fyMPBTNpl95eQfYWFbKRq9gH+V5+g==" />
<input name='user[id]' type='hidden' value='2780020'>
<div class='content-wrapper--email'>
<div class='form-group'>
<div class='panel-body-title'>
smc5141@nate.com
</div>
<div class='panel-body-desc'>가입하시려는 이메일 주소가 올바르다면, 아래 버튼을 클릭하여 이메일 인증을 진행해주세요.
</div>
</div>
<div class='form-group form-group--resend-border hidden' data-resend-email>
<div class='content-title-box'>
<div class='sub-message'>
인증 이메일을 받지 못하셨나요?
<span class='resend' id='resendEmail'>인증 이메일 다시 보내기</span>
</div>
</div>
</div>
</div>
<div class='btn-wrap margin-top' data-email-verification-button>
<button class='btn-new btn--type-primary btn--width-100' data-gtm-action='인증 이메일 보내기' data-gtm-category='통합인증' id='send-verify-email-btn' type='submit'>인증 이메일 보내기</button>
</div>
</form>

</div>

</div>
</div>
</div>
</main>
<script>
  var nsmX = new Image();
  var user = $('input[name="user_email"]').val();
  nsmX.src = location.protocol+"//ntracker.nsm-corp.com/c/rcv.php?id=20015&code=100&value=&trans=" + user;
</script>

<div id="Footer-react-component-82eea3ad-40b2-4b84-ba34-8e58a6fa43f8"></div>
      <script type="application/json" class="js-react-on-rails-component" data-component-name="Footer" data-dom-id="Footer-react-component-82eea3ad-40b2-4b84-ba34-8e58a6fa43f8">{"b2b":{"status":false,"b2bCompany":null}}</script>
      

<div id='popup-mask'></div>
<div id='gnb-popup-mask'></div>
<div id='app-download-popup'></div>

  <script type="text/javascript">
  <!--

  //  컨버전 ID (수정하지 마세요)
  var CN = "IxN9QioPT0I=";

  //-->

  var SEA_others1 = '';
  if (window.innerWidth < 768) {
    SEA_others1 = "air_m_join";
  } else {
    SEA_others1 = "air_pc_join";
  }

  </script>
  <script language='javascript' src='https://tag.adgather.net/https_conversion.js'></script>

<script type="text/javascript">
  var google_tag_params = {
  ecomm_prodid: 'REPLACE_WITH_VALUE',
  ecomm_pagetype: 'REPLACE_WITH_VALUE',
  ecomm_totalvalue: 'REPLACE_WITH_VALUE',
  travel_destid: 'REPLACE_WITH_VALUE',
  travel_originid: 'REPLACE_WITH_VALUE',
  travel_startdate: 'REPLACE_WITH_VALUE',
  travel_enddate: 'REPLACE_WITH_VALUE',
  travel_pagetype: 'REPLACE_WITH_VALUE',
  travel_totalvalue: 'REPLACE_WITH_VALUE',
  };
</script>
<script type="text/javascript">
  /* <![CDATA[ */
  var google_conversion_id = 1004447359;
  var google_custom_params = window.google_tag_params;
  var google_remarketing_only = true;
  /* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion_async.js">
</script>
<noscript>
  <div style="display:inline;">
    <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1004447359/?guid=ON&amp;script=0"/>
  </div>
</noscript>

<!--  공통 스크립트 -->
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/adiz_sv120-38fea29758c151518c764b4bc1a0bdd8e78c105c31e114ef16a4fd0b8be47a31.js"></script>

<script type="text/javascript">
  window.criteo_q = window.criteo_q || [];
  window.userEmail = "";
  window.userAgent = "d";


  if(navigator.userAgent.match(/Android|Mobile|iP(hone|od|ad)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
    //모바일(스마트폰+태블릿)일 때
    window.userAgent = "t";
    if(navigator.userAgent.match(/Mobile|iP(hone|od)|BlackBerry|IEMobile|Kindle|NetFront|Silk-Accelerated|(hpw|web)OS|Fennec|Minimo|Opera M(obi|ini)|Blazer|Dolfin|Dolphin|Skyfire|Zune/)){
      //스마트폰일 때
      window.userAgent = "m";
    }
  }
</script>





<script>

</script>

<script>

    var user = '0'


  dataLayer.push( {
    'userID': user
  });
  /**** fire remarketingTag ******/
  dataLayer.push({
    'event': 'fireRemarketingTag',
    'google_tag_params': {
      'ecomm_prodid': '',
      'ecomm_pagetype': 'other',
      'ecomm_totalvalue': ''
    }
  });
  /****** fire remarketingTag ******/

    dataLayer.push({
      'event': 'completeRegistration',
      'previous_url': "/",
    });
  if (window.jQuery) {
    $(document).ready(function() {
      $('.offer-item-container li.item').click(function(event){
        var $offer_item = $(this);

        var offer_id = $offer_item.attr('data-offer-id');
        var offer_name = $offer_item.find('.name').text();
        var offer_price = $offer_item.find('.price[data-offer-price]').attr('data-offer-price');
        var offer_category = $offer_item.attr('data-offer-type');

        var offer_url = $offer_item.find('a.offer-link').attr('href');

        dataLayer.push({
          'event': 'productClick',
          'ecommerce': {
            'click': {
              'actionField': {'list': offer_category},      // Optional list property.
              'products': [{
                'name': offer_name,                      // Name or ID is required.
                'id': offer_id,
                'price': offer_price,
                'category': offer_category
               }]
             }
           }
        });
      });


      $(document).on('wishChecked', function(e) {
        dataLayer.push({
          'event': 'addToWishlist',
          'offer_id': e.detail.offerId
        });
      });
    });
  }
</script>

<script>

  if (!wcs_add) var wcs_add={};

  wcs_add["wa"] = "s_2652984f26f1";

  if (!_nao) var _nao={};

  _nao["cnv"] = wcs.cnv("2","1");
  wcs_do(_nao);
  _nao={};
      </script> 
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