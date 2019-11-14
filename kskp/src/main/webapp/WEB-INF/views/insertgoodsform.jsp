<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class='no-js css-menubar' lang='en'>
<head>
<meta charset='utf-8'>
<meta content='IE=edge' http-equiv='X-UA-Compatible'>
<meta content='width=device-width, initial-scale=1.0, user-scalable=0' name='viewport'>
<meta content='Partner' name='description'>
<meta content='' name='author'>
<title>GUIDE | SWAG</title>
<meta name="csrf-param" content="authenticity_token" />

<meta name="csrf-token" content="T9a1SD5LHk3qqbwC5gYYbKp0EotINZ1SzivykFhnkjug6UKlfBmP60c2rbt2vTlT7icOYO4Hy1D6wqzBioaHyg==" />
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/favicon-e7fc64f202376533d86106e6f712ed41eee1e843dbc5de3b2765938656f8eb93.ico' rel='shortcut icon'>
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/0.b280c48150e7b9ec4a16.css" />
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/webpack/application.b280c48150e7b9ec4a16.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-f4aa669c5b0bb95eeab45e16d2191196766ade801ea426d4378844f33223711e.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-a9128fc1a122430f544993e6d4fc160ef0da94eb6bdc0b7c4881ca2d32dae94a.css" />
<link href='//fonts.googleapis.com/css?family=Roboto:300,400,500,300italic' rel='stylesheet'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon-precomposed'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-76-59c4321eae219afd9cebfb870646b877f48a5b63adab68a37604891800aed0da.png' rel='apple-touch-icon' sizes='76x76'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-120-0de06603ad3e4427cb29b5e4ef6833021cc52ea642ee76e843ed997209049bf5.png' rel='apple-touch-icon' sizes='120x120'>
<link href='https://d2yoing0loi5gh.cloudfront.net/assets/logo/ic-mobile-152-cc369a832b7a69d0c0b63c3914168b58e732a26729d72e976e7f729b923ee302.png' rel='apple-touch-icon' sizes='152x152'>
 
 
 <script
    type="text/javascript"
    src="//code.jquery.com/jquery-2.2.4.js"
    
  ></script>
    <link rel="stylesheet" type="text/css" href="/css/result-light.css">

      
	<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-a79762e95ce2ee3797f3c699b7bae7897749e06c8ca7717bf815c52af7e70d4e.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-7951be54de562fdfddb2d15cb298a0a5f2474e9b5e8ed9be904d5e55d0384e1c.css" />
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.b280c48150e7b9ec4a16.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.b280c48150e7b9ec4a16.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-cf4a922a2252fa7cbbecf66e30e4a963909a19be58a6b6c2bb2227588d1eabfb.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-6a3bb3d330043d9b866eb3001568d9d4dc01e4bda8d00ca953b6f54aae15e586.js"></script>
<script>
  Breakpoints();
</script>
<script src='//maps.googleapis.com/maps/api/js?key=AIzaSyDfW8RFpx4thvW5Rr8Euvnzo2y-TXzq4Cw&amp;libraries=places' type='text/javascript'></script>
<script src='//cdn.ravenjs.com/3.24.2/raven.min.js'></script>
<script>
  Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
</script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
      <script type="text/javascript" src="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.js"></script>
<!--       <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/pepper-grinder/jquery-ui.css"> -->
			<link rel="stylesheet" href="css/datepicker.css">
      <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.css">
  <style id="compiled-css" type="text/css">
      /* 
Just fixing jsfiddle embedded autosizing problem, 
this style is not needed for MDP use.
*/
body { height: 400px; }
        #google-map {
            width: 500px;
            height: 500px;
            margin: 0;
            padding: 0
        }
        #search-panel {
            position: absolute;
            top: 10px;
            left: 25%;
            z-index: 5;
            background-color: #FFFFFF;
            padding: 5px;
            border: 1px solid black;
            text-align: center;
            padding: left: 10px
        }
  </style>


  <!-- TODO: Missing CoffeeScript 2 -->

  <script type="text/javascript">//<![CDATA[
  $.datepicker.setDefaults({
      prevText: '이전 달',
      nextText: '다음 달',
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
      showMonthAfterYear: true,
      yearSuffix: '년'
  });
 $(function(){
    	var date = new Date();
$('#mdp-demo').multiDatesPicker({
	beforeShowDay: function noBefore(date){ 
		   if (date < new Date()) 
		       return [false]; 
		   return [true]; 
		},
	altField: '#altField'
});

    });
 
  //]]></script>

<style>
.goods{
 width : 400px;
}

#sub{
margin: 5px 2px 100px 4px
}
.wrap {
resize:none;
line-height:30px;
width:470px;
overflow-y:hidden;
height:30px;
border:1px solid #ccc;
}
</style>
<script type="text/javascript">
function previewImage(targetObj, View_area) {
	var preview = document.getElementById(View_area); //div id
	var ua = window.navigator.userAgent;
  //ie일때(IE8 이하에서만 작동)
	if (ua.indexOf("MSIE") > -1) {
		targetObj.select();
		try {
			var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
			var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


			if (ie_preview_error) {
				preview.removeChild(ie_preview_error); //error가 있으면 delete
			}

			var img = document.getElementById(View_area); //이미지가 뿌려질 곳

			//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
			img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
		} catch (e) {
			if (!document.getElementById("ie_preview_error_" + View_area)) {
				var info = document.createElement("<p>");
				info.id = "ie_preview_error_" + View_area;
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
			var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
			if (prevImg) {
				preview.removeChild(prevImg);
			}
			var img = document.createElement("img"); 
			img.id = "prev_" + View_area;
			img.classList.add("obj");
			img.file = file;
			img.style.width = '350px';
			img.style.height = '300px';
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
						+ View_area)) {
					var info = document.createElement("p");
					info.id = "sfr_preview_error_" + View_area;
					info.innerHTML = "not supported FileReader";
					preview.insertBefore(info, null);
				}
			}
		}
	}
}


</script>
</head>
<body class='site-menubar-unfold' data-action='index' data-controller-path='partner/dashboard' data-controller='dashboard' data-locale='ko' data-sign-in>
<!--[if lt ie 8]>
<p class='browserupgrade'>You are using an <strong>outdated</strong> browser. Please <a href='http://browsehappy.com/'>upgrade your browser</a> to improve your experience.</p>
<![endif]-->
<nav class='site-navbar navbar navbar-default navbar-fixed-top navbar-mega' role='navigation'>
<div class='navbar-header'>
<button class='navbar-toggle hamburger hamburger-close navbar-toggle-left hided' data-toggle='menubar' type='button'>
<span class='sr-only'>Toggle navigation</span>
<span class='hamburger-bar'></span>
</button>
<button class='navbar-toggle collapsed' data-target='#site-navbar-collapse' data-toggle='collapse' type='button'>
<i aria-hidden='true' class='icon wb-more-horizontal'></i>
</button>
<a class='navbar-brand navbar-brand-center' data-turbolinks='false' href='main.do'>
<img alt='logo' class='navbar-brand-logo all-size-logo' height='24px' src='img/logo.png' title='파트너' width='108px'>
<img alt='logo' class='navbar-brand-logo tablet-logo' height='46px' src='img/logo.png' title='파트너' width='46px'>
<!--  회원 등급 표시 -->
<span class='navbar-brand-text hidden-xs'>가이드</span>
</a>
</div>
<div class='navbar-container container-fluid'>
<!-- Navbar Collapse -->
<div class='collapse navbar-collapse navbar-collapse-toolbar' id='site-navbar-collapse'>
<!-- Navbar Toolbar Right -->
<ul class='nav navbar-toolbar navbar-right navbar-toolbar-right'>
<li class='dropdown'>
<a aria-expanded='false' class='navbar-avatar dropdown-toggle' data-animation='scale-up' data-toggle='dropdown' data-turbolinks='false' href='#' role='button'>
<span class='avatar avatar-online'>
</span>
<!--  회원 이름 표시 -->
<span>${ldto1.gu_name}님 환영합니다</span>

</a>
</li>
<li>
<a class='btn btn-default btn-block btn-primary' data-turbolinks='false' href='main.do' role='button'>
메인으로 가기
</a>
</li>
</ul>
<!-- End Navbar Toolbar Right -->
</div>
<!-- End Navbar Collapse -->
</div>
</nav>

<div class='site-menubar'>
<div class='site-menubar-body'>
<div>
<div>
<ul class='site-menu'>
<li class='site-menu-category'></li>
<li class='site-menu-item'>
<a class='animsition-link' href='goodspage.do?gu_seq=${ldto1.gu_seq}'>
<i aria-hidden='true' class='site-menu-icon wb-flag'></i>
<span class='site-menu-title'>상품 관리</span>
</a>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-heart'></i>
<span class='site-menu-title'>후기 관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='"starReview.do"'>
<span class='site-menu-title'>답글 달지 않은 후기</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href=''>
<span class='site-menu-title'>답글한 후기</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-chat-text'></i>
<span class='site-menu-title'>메시지</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='sendLetterform.do'>
<span class='site-menu-title'>메시지 보내기</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='letterlist.do?l_receiver=${ldto1.gu_email}&pnum=1'>
<span class='site-menu-title'>받은 메시지 - ${count}개</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='sendletterlist.do?l_sender=${ldto1.gu_email}&pnum=1'>
<span class='site-menu-title'>보낸 메시지 - ${count1}개</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href=''>
<i aria-hidden='true' class='site-menu-icon wb-calendar'></i>
<span class='site-menu-title'>일정 관리</span>
</a>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-payment'></i>
<span class='site-menu-title'>정산 관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href=''>
<span class='site-menu-title'>현재 수익 내역</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href=''>
<span class='site-menu-title'>송금 신청 내역</span>
</a>
</li>
</ul>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='guserinfo.do?seq=${ldto1.gu_seq}'>
<i aria-hidden='true' class='site-menu-icon wb-user'></i>
<span class='site-menu-title'>계정관리</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href=''>
<i aria-hidden='true' class='site-menu-icon wb-bell'></i>
<span class='site-menu-title'>공지사항</span>
</a>
</li>
</ul>
</div>
</div>
</div>
<div class='language-selector'>
<script type="application/json" id="js-react-on-rails-context">{"railsEnv":"production","inMailer":false,"i18nLocale":"ko","i18nDefaultLocale":"ko","rorVersion":"11.0.9","rorPro":false,"href":"https://www.myrealtrip.com/partner?guide_id=13301","location":"/partner?guide_id=13301","scheme":"https","host":"www.myrealtrip.com","port":null,"pathname":"/partner","search":"guide_id=13301","httpAcceptLanguage":"ko-KR,ko;q=0.9,en-US;q=0.8,en;q=0.7","serverSide":false}</script>
<div id="LanguageSelector-react-component-6dcb380a-ef45-4f7d-bb29-bb945688defc"></div>
      <script type="application/json" class="js-react-on-rails-component" data-component-name="LanguageSelector" data-dom-id="LanguageSelector-react-component-6dcb380a-ef45-4f7d-bb29-bb945688defc">{"theme":"partner"}</script>
      

</div>
</div>

<div class='page animsition'>
<div class='page-header'>
<ol class='breadcrumb'>
<li>
<a href='/partner'>HOME</a>
</li>
<li class='active'>상품 등록</li>
</ol>

</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-lg-12'>
<div class='panel panel-bordered'>
<div class='panel-heading'>
<div class='panel-title'>
상품 등록
<!-- 상품 갯수 -->

<div class='panel-btn-container clearfix hidden-xs'>
<div class='col-xs-12'>

</div>
</div>
</div>
</div>
<div class='panel-body'>
<div class='row'>
<div class='col-md-12'>
<table class='table table-striped table-hover toggle-circle'>
<thead>
<form action="insertgoods.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="gu_seq" value="${ldto1.gu_seq}" />
<hr>
<p>*도시
	<select name="g_area">
	  <option value="서울" selected="selected">서울</option>
	  <option value="인천">인천</option>
	  <option value="대전" >대전</option>
	  <option value="대구" >대구</option>
	  <option value="부산" >부산</option>
	  <option value="제주" >제주</option>
	</select>
</p>
<hr>
<p>
*여행 카테고리<br/><br/>
<input type="radio" name="g_category" value="박물관/미술관">박물관/미술관&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="g_category" value="국립공원">국립공원&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="g_category" value="야경">야경<br/><br/>
<input type="radio" name="g_category" value="시티투어" checked="checked">시티투어&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="g_category" value="액티비티">액티비티&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="g_category" value="맛집/카페">맛집/카페<br/><br/>
<input type="radio" name="g_category" value="통역/비지니스">통역/비지니스&nbsp;&nbsp;&nbsp;
<input type="radio" name="g_category" value="쇼핑">쇼핑
<p class='help-block'>
• 아래의 카테고리 중 1개만 선택이 가능합니다.
• 상품을 가장 잘 표현하는 카테고리를 선택해주세요.
</p>
</p>
<hr>
<p>*여행제목<input class="goods" type="text" name="g_name"/></p>
<P class='help-block'>
• 여행 주제를 정확하고 간결하게 표현해주세요.<br/>
• 맞춤법이 맞지 않거나 이모티콘 혹은 특수문자를 사용하실 경우 상품 검수 절차로 인해 판매가 늦어질 수 있습니다.<br/>
• 지역명이 포함된 제목은 상품 노출에 더 효과적입니다. (경복궁, 산책하는 여행 / 샌프란시스코! 경복궁 당일치기 등)<br/>
</P>
<hr>
<p>*한줄요약<input class="goods" type="text" name="g_oneline"  />
</p>
<P class='help-block'>
• 제목과 연결되는 매력 포인트를 작성해 주세요.<br/>
• 페이지에서 강조되어 나타납니다.<br/>
</P>
<hr>
<p>*여행소개</p>
<p>
<textarea class="wrap" onkeyup="this.style.height='26px'; this.style.height = this.scrollHeight + 'px';" type="text" name="g_conts" ></textarea>
</p>
<p class='help-block'> 
• 상품 작성 예시 <br/>
[매력 포인트 - 투어의 매력 포인트에 관해 간단히 소개해주세요.]<br/>
ex) 서울을 소개합니다. 서울은 대한민국의 수도이며 경제적 문화적 중심지이기도 합니다. 서울에서 여러분께 저만이 알고 있는 특별한 여행지들을 소개할게요<br/>
<br/>
[투어 코스 - 구체적인 코스와 각각의 소요 시간에 관해 간단히 설명해주세요]<br/>
ex)<br/>
1. 서촌 골목을 소개합니다.(2시간)<br/>
2. 서촌 맛ㅈ비 여행을 함께 해요(1시간)<br/>
3. 경복궁을 마지막으로 둘러봅니다.(2시간)
</p>
<hr>
<p>*소요시간 
	<select name="g_time">
		  <option value="1" selected="selected">1시간</option>
		  <option value="2" >2시간</option>
		  <option value="3" >3시간</option>
		  <option value="4" >4시간</option>
		  <option value="5" >5시간</option>
		  <option value="6" >6시간</option>
		  <option value="7" >7시간</option>
		  <option value="8" >8시간</option>
		  <option value="9" >9시간</option>
		  <option value="10" >10시간</option>
		  <option value="11" >11시간</option>
		  <option value="12" >12시간</option>
	</select>
</p>
<hr>
<p>*여행 대표 사진  
<input type="file" name="file" id="profile_pt" onchange="previewImage(this,'View_area')">
<div id='View_area' style='position:relative; width: 400px; height: 300px; color: black; border: 0px solid black; dispaly: inline; '>
</div>
</p>
<hr>
<p>
*1인당 가격 <input type="text" name="g_price" placeholder="ex)20000" />
</p>
<hr>
<p>*1인당 예약 가능 인원수 <select name="g_people">
	  <option value="1" selected="selected">1</option>
	  <option value="2">2</option>
	  <option value="3" >3</option>
	  <option value="4" >4</option>
	  <option value="5" >5</option>
	  <option value="6" >6</option>
	  <option value="7" >7</option>
	  <option value="8" >8</option>
	  <option value="9" >9</option>
	  <option value="10" >10</option>
	</select></p>
<hr>
<p>
*필수 안내사항<textarea class="wrap" onkeyup="this.style.height='26px'; this.style.height = this.scrollHeight + 'px';" type="text" name="g_info" ></textarea><br/>
</p>
<p class='help-block'>
 <br/>
• 복장 및 필요물품 또는 불필요물품 등 여행자에게 안내할 사항들을 적어주세요.
</p>
<hr>
	<p>*만나는 시간 <select name="g_mtime">  
	  <option value="1"  selected="selected" >1시</option>
	  <option value="2" >2시</option>
	  <option value="3" >3시</option>
	  <option value="4" >4시</option>
	  <option value="5" >5시</option>
	  <option value="6" >6시</option>
	  <option value="7" >7시</option>
	  <option value="8" >8시</option>
	  <option value="9" >9시</option>
	  <option value="10" >10시</option>
	  <option value="11" >11시</option>
	  <option value="12" >12시</option>
	  <option value="13" >13시</option>
	  <option value="14" >14시</option>
	  <option value="15" >15시</option>
	  <option value="16" >16시</option>
	  <option value="17" >17시</option>
	  <option value="18" >18시</option>
	  <option value="19" >19시</option>
	  <option value="20" >20시</option>
	  <option value="21" >21시</option>
	  <option value="22" >22시</option>
	  <option value="23" >23시</option>
	  <option value="24">0시</option>
	</select></p>
	
	<hr class='divider'>
	<div class='form-group clearfix' data-desc='• 넓은 범위의 장소를 설정하면 만남에 많은 시간이 소요됩니다.<br/>• 나쁜 예) 그린파크역, 시청역<br/>• 좋은 예) 그린파크역 1번 출구 앞 벤치, 시청역 2번 출구 오른쪽 스타벅스 입구 앞<br/>'>
	<label class='control-label col-xs-12 margin-bottom-15 font-weight-600'>
	*만나는 장소
	</label>
	<div class='col-xs-12'>
	<div class='row'>
	<div class='form-group clearfix'>
	<label class='control-label col-xs-12' for='offerMeetingPoint'>
	*만나는 장소 이름
	<span>*</span>
	</label>
	<div class='col-xs-12'>
	<input class='form-control' name="g_address" id='offerMeetingPoint'  type='text'>
	</div>
	</div>
	<div class='form-group clearfix'>
	<div class='col-xs-12'>
	<p class='help-block'>• 만남을 위한 구체적인 장소를 알려주세요.<br/>• 낯선 곳에서의 여행자의 불안감을 해소해줍니다.<br/></p>
	</div>
	</div>
	</div>
	</div>
	<div class='col-xs-12'>
	<div class='row'>
	<div class='form-group clearfix'>
	<label class='control-label col-xs-12' for='inputSearchMap'>
	*만나는 장소 위치
	<span>*</span>
	</label>
	<div class='col-xs-12'>
	<div class='form-group' data-desc='• 여행자분들과 만날 장소는 처음 방문하는 여행자들도 쉽게 찾아갈 수 있는 곳으로 정해주세요.<br/>'>
	<div class='input-search'>
	<button id="submit" type="button" class='input-search-btn' value="Geocode">
	<i aria-hidden='true' class='icon wb-search'></i>
	</button>
	<input class='form-control' id='inputSearchMap' value="" placeholder='만나는 장소의 주소 혹은 랜드마크 검색' type='text'>
	<input name='g_lat' id="lat" type='hidden' value='0.0'>
	<input name='g_lng' id="lng" type='hidden' value='0.0'>
			</div>
		</div>
	</div>
	<div class='col-xs-12 form-group'>
	<div class='height-300' id='meetingPointMap'></div>
			</div>
		</div>
	</div>
</div>

<hr>
<hr>
<p>*투어 가능 날짜 </p>
 <div id="mdp-demo"></div>
<input type="hidden"  name="g_date" id="altField" >
<hr>
<input id="sub" type="submit" value="상품등록">
</form>
</thead>
<tbody>


</tbody>
</table>


</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>


<footer class='site-footer main' id='footer'>
		<div class="footer_wrap">
			<div class="left_box">
				<p class="center">고객센터</p>
				<p class="number">010-7139-5141</p>
				<p class="sub">연중무휴</p>
			</div>
			<div class="right_box">
				<p class="info">상호명 : (주)SWAG | 대표 : 신민철 | 사업자등록번호 : 010-12-34567 | 주소 : 서울 특별시 금천구 독산동 한신아파트 1동 703호 | 이메일 : smc5141@naver.com</p>
				<p class="copy">자사는 프로젝트를 위해 만들어진 회사이며 상표등록원에 등록되어있지 않습니다.<br>copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
			</div>
		</div>
</footer>

<div class='global-alert-box'>
</div>
  <script>
    // tell the embed parent frame the height of the content
    if (window.parent && window.parent.parent){
      window.parent.parent.postMessage(["resultsFrame", {
        height: document.body.getBoundingClientRect().height,
        slug: "jm3cpdfc"
      }], "*")
    }

    // always overwrite window.name, in case users try to set it manually
    window.name = "result"    
  </script>
      <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhggmQMw_dzIAkkG9vIF6mTO9ZwU81z6Q&callback=initMap">
    </script>
    <script>
        /**
         * Google Map API 주소의 callback 파라미터와 동일한 이름의 함수이다.
         * Google Map API에서 콜백으로 실행시킨다.
         */
        function initMap() {
            console.log('Map is initialized.');
 
            /**
             * 맵을 설정한다.
             * 1번째 파라미터 : 구글 맵을 표시할 위치. 여기서는 #google-map
             * 2번째 파라미터 : 맵 옵션.
             *      ㄴ zoom : 맵 확대 정도
             *      ㄴ center : 맵 중심 좌표 설정
             *              ㄴ lat : 위도 (latitude)
             *              ㄴ lng : 경도 (longitude)
             */
            var map = new google.maps.Map(document.getElementById('meetingPointMap'), {
                zoom: 20,
                center: {
                    lat: 37.566535,
                    lng: 126.97796919999996
                }
            });
 
            /**
             * Google Geocoding. Google Map API에 포함되어 있다.
             */
            var geocoder = new google.maps.Geocoder();
 
            // submit 버튼 클릭 이벤트 실행
            document.getElementById('submit').addEventListener('click', function() {
                console.log('submit 버튼 클릭 이벤트 실행');
 
                // 여기서 실행
                geocodeAddress(geocoder, map);
            });
 
            /**
             * geocodeAddress
             * 
             * 입력한 주소로 맵의 좌표를 바꾼다.
             */
            function geocodeAddress(geocoder, resultMap) {
                console.log('geocodeAddress 함수 실행');
 
                // 주소 설정
                var address = document.getElementById('inputSearchMap').value;
 				alert(address);
                /**
                 * 입력받은 주소로 좌표에 맵 마커를 찍는다.
                 * 1번째 파라미터 : 주소 등 여러가지. 
                 *      ㄴ 참고 : https://developers.google.com/maps/documentation/javascript/geocoding#GeocodingRequests
                 * 
                 * 2번째 파라미터의 함수
                 *      ㄴ result : 결과값
                 *      ㄴ status : 상태. OK가 나오면 정상.
                 */
                geocoder.geocode({'address': address}, function(result, status) {
                    console.log(result);
                    console.log(status);
 
                    if (status === 'OK') {
                        // 맵의 중심 좌표를 설정한다.
                        resultMap.setCenter(result[0].geometry.location);
                        // 맵의 확대 정도를 설정한다.
                        resultMap.setZoom(18);
                        // 맵 마커
                        var marker = new google.maps.Marker({
                            map: resultMap,
                            position: result[0].geometry.location
                        });
 
                        // 위도
                        console.log('위도(latitude) : ' + marker.position.lat());
                        document.getElementById('lat').value = marker.position.lat();
                        // 경도
                        console.log('경도(longitude) : ' + marker.position.lng());
                        document.getElementById('lng').value = marker.position.lng();
                    } else {
                        alert('지오코드가 다음의 이유로 성공하지 못했습니다 : ' + status);
                    }
                });
            }
        }
    </script>
</body>
</html>
