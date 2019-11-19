<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<!--[if lte ie 9]>
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ie-eda6040f5292060b5014926077d86119a5586252cbc467bb61c30237d5ac2d46.css" />
<![endif]-->
<!--[if lt ie 9]>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/common/html5shiv/dist/html5shiv-72001964f72eb70efb8cd11b4727fa613245eb29e197137d690e2b276fc12f61.js"></script>
<![endif]-->
<!--[if lt ie 10]>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/common/media.match-562ed6d1b442ca3aaab51118f9293da0f5cbbc364d1ef2318054c8e4caf282b7.js"></script>
<link rel="stylesheet" media="screen" href="https://d2yoing0loi5gh.cloudfront.net/assets/common/respond/respond-proxy.html.css" />
<link href='/assets/common/respond/respond-proxy.html' id='respond-proxy' rel='respond-procy'>
<script src='/assets/common/respond/respond.src.js'></script>
<link href='/assets/common/respond/respond.proxy.gif' id='respond-redirect' rel='respond-redirect'>
<script src='/assets/common/respond/respond.proxy.js'></script>
<![endif]-->
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/vendor.b280c48150e7b9ec4a16.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/webpack/application.b280c48150e7b9ec4a16.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/kitty/ko-cf4a922a2252fa7cbbecf66e30e4a963909a19be58a6b6c2bb2227588d1eabfb.js"></script>
<script src="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-6a3bb3d330043d9b866eb3001568d9d4dc01e4bda8d00ca953b6f54aae15e586.js"></script>
<script>
  Breakpoints();
</script>
<script src='//maps.googleapis.com/maps/api/js?key=AIzaSyDfW8RFpx4thvW5Rr8Euvnzo2y-TXzq4Cw&amp;libraries=places' type='text/javascript'></script>
<script src='//cdn.ravenjs.com/3.24.2/raven.min.js'></script>
<script type="text/javascript"  src="js/GU_userinfo.js"></script>
<script>
  Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
</script>
</head>
<script type="text/javascript">

// $(function(){
// 	$("#guideProfileBtn").change(function(){
//          var formData = new FormData();
//          formData.append('file',$('#profileupload')[0].files[0]);
// 		$.ajax({
// 			url : '${pageContext.request.contextPath}/profileupload.do',
// 	        type : 'POST',
// 	        data : formData,
// 	        contentType : false,
// 	        processData : false,    
// 			success : function(data) {
// 				console.log(data);
// 					$("#View_area").hide();
// 					$("#preview").css({"background":"url("+data+")"});
// 				}, 
// 				error : function() {
// 						console.log("실패");
// 				}
// 						  });
		
// 	})
	
	
	
// });
function ajaxFileUpload() {
        // 업로드 버튼이 클릭되면 파일 찾기 창을 띄운다.
        jQuery("#ajaxFile").click();
    }

var sel_file;

$(document).ready(function(){
	$("#ajaxFile").on("change", handleImgFileSelect1);

});

function handleImgFileSelect1(e){
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f){
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e){
			$("#View_area").attr("src",e.target.result);
		}
		reader.readAsDataURL(f);
	})
	
}

//     function ajaxFileChange() {
//         // 파일이 선택되면 업로드를 진행한다.
//         ajaxFileTransmit();
//     }

//     function ajaxFileTransmit() {
//         var form = jQuery("ajaxFrom")[0];
//         var formData = new FormData(form);
//         formData.append("message", "파일 확인 창 숨기기");	
//         formData.append("file", jQuery("#ajaxFile")[0].files[0]);

//         jQuery.ajax({
//               url : "${pageContext.request.contextPath}/profileupload.do"
//             , type : "POST"
//             , processData : false
//             , contentType : false
//             , data : formData
//             , success:function(data) {
//             	$("#View_area").hide();
// 					$("#preview").css({"background":"url("+data+")"});
//             }
//         });
//     }

    function ajaxFileUpload1() {
        // 업로드 버튼이 클릭되면 파일 찾기 창을 띄운다.
        jQuery("#ajaxFile1").click();
    }

//     function ajaxFileChange1() {
//         // 파일이 선택되면 업로드를 진행한다.
//         ajaxFileTransmit1();
//     }

//     function ajaxFileTransmit1() {
//         var form = jQuery("ajaxFrom")[0];
//         var formData = new FormData(form);
//         formData.append("message", "파일 확인 창 숨기기");
//         formData.append("file", jQuery("#ajaxFile1")[0].files[0]);

//         jQuery.ajax({
//               url : "${pageContext.request.contextPath}/profileupload.do"
//             , type : "POST"
//             , processData : false
//             , contentType : false
//             , data : formData
//             , success:function(data, textStatus, xhr) {
//             	console.log(data);
//             	 console.log('success');
//             },
//             error : function(request,status,error) {  
//                 alert("code:"+request.status+"\n"+"error:"+error);
//              }
//         });
//     }


</script>
<script type="text/javascript">
var sel_file;

$(document).ready(function(){
	$("#ajaxFile1").on("change", handleImgFileSelect);

});

function handleImgFileSelect(e){
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f){
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload = function(e){
			$("#img").attr("src",e.target.result);
		}
		reader.readAsDataURL(f);
	})
	
}


</script>
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
<c:choose>
<c:when test="${ldto.m_status eq 'M'}">
<span class='navbar-brand-text hidden-xs'>일반회원</span>
</c:when>
<c:when test="${ldto.m_status eq 'A'}">
<span class='navbar-brand-text hidden-xs'>관리자</span>
</c:when>
<c:otherwise>
<span class='navbar-brand-text hidden-xs'>가이드</span>
</c:otherwise>
</c:choose>
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
<a class='animsition-link' href="guidenoreview.do?gu_seq=${ldto1.gu_seq}">
<span class='site-menu-title'>답글 달지 않은 후기</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='guideyesreview.do?gu_seq=${ldto1.gu_seq}'>
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
<span class='site-menu-title'>받은 메시지</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='sendletterlist.do?l_sender=${ldto1.gu_email}&pnum=1'>
<span class='site-menu-title'>보낸 메시지</span>
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
<a class='animsition-link' href='salary.do?gu_seq=${ldto1.gu_seq}'>
<span class='site-menu-title'>현재 수익 내역</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='checksalary.do?gu_seq=${ldto1.gu_seq}'>
<span class='site-menu-title'>송금 신청 내역</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='getgsalary.do?gu_seq=${ldto1.gu_seq}'>
<span class='site-menu-title'>정산 받은 내역</span>
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
<a class='animsition-link' href='nboardlist.do?pnum=1'>
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
<li class='active'>계정관리</li>
</ol>

</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-lg-12'>
<div class='panel panel-bordered panel-profile panel-edit-profile panel-form'>
<div class='panel-heading'>
<div class='panel-title'>
계정관리
</div>
</div>
<div class='panel-body'>
<div class='col-lg-8 col-lg-offset-2 col-sm-12'>
<div class='row'>
<form data-validation="true" enctype='multipart/form-data'  id="ajaxFrom"class="form-horizontal form-account" action="gupdate.do" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="put" /><input type="hidden" name="authenticity_token" value="qSsqT1/CMR5DKrBhglSyZ4GLI21PUugoYr2pqBoib2FZIAzfzm9R5waK5iOTW+GaW+tv1avF7fHRmZcnsoGQ0Q==" />
<input name='guide[company]' type='hidden' value='false'>
<div class='panel panel-bordered panel-border-gray panel-profile'>
<div class='panel-image bg-blue-grey-300'  style="   width: 100%;
   height: 200px;
   overflow: hidden;"   id="img_check2" >
<img id="img" src="${dto2.gu_backimg}" style="width: 100%;
   height: auto;"  >
<div class='input-group-file background-file file-upload-btn'>
<input type="file" name ="file" id="ajaxFile1"  />

<input type="button" onClick="ajaxFileUpload1();">
<div class='btn btn-default btn-file ladda-button' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
배경사진 변경...
</div>
</div>
</div>
<div class='photo-container'>
<div class='avatar avatar-lg' id="img_check1" style="Width :80px; Height :80px;  Border-radiuse :40px; Overflow :hidden;">
<c:choose>
<c:when test="${empty dto2.gu_img}">
<img alt='guide profile' id='View_area' class='default-img' src='//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png'>
</c:when>
<c:otherwise>
<img alt='guide profile' id='View_area' class='default-img' src='${dto2.gu_img}'>
</c:otherwise>
</c:choose>
</div>
<div class='avatar-file file-upload-btn'>
<input type="file" name ="file1" id="ajaxFile" style="display:none;"/>
<input type="button" onClick="ajaxFileUpload();">
<div class='btn btn-success btn-file ladda-button' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
사진변경...
</div>
</div>
</div>
<div class='panel-body margin-top-50'>
<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
가이드 이름
<span>*</span>
</label>
<div class='col-sm-9'>
${dto2.gu_name}
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
소개
<span>*</span>
</label>
<div class='col-sm-9'>
<div class='row'>
<div class='col-sm-12'>
<p>거주하게 된 배경, 파트너 활동의 계기, 직업 등 여행자에게 파트너님을 소개해주세요.<br/>한글 기준 최소 100자 이상 작성해주세요.<br/></p>
<textarea class='form-control' id="gu_intro" name='gu_intro' rows='5' type='text'>${dto2.gu_intro}</textarea>
</div>
</div>
<div class="notice" id="intro_check"></div>
<small class='help-block'>• 예약 확정 후 서로의 연락처가 공개됩니다.<br/>• 안전 거래를 위해 파트너님의 개인 연락처 및 SNS 페이지를 기재할 경우 수정되거나 삭제될 수 있습니다.<br/></small>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
가이드 연락처
<span>*</span>
</label>
<div class='col-sm-9 col-xs-12'>
<div class='row'>
<div class='col-sm-5'>
<select class='form-control' name=''>
<option value=''>국가번호</option>
<option value='1'>+1 ( 캐나다  미국 )</option>
<option value='7'>+7 ( 카자흐스탄  러시아 )</option>
<option value='20'>+20 ( 이집트 )</option>
<option value='27'>+27 ( 남아프리카 공화국 )</option>
<option value='30'>+30 ( 그리스 )</option>
<option value='31'>+31 ( 네덜란드 )</option>
<option value='32'>+32 ( 벨기에 )</option>
<option value='33'>+33 ( 프랑스 )</option>
<option value='34'>+34 ( 스페인 )</option>
<option value='36'>+36 ( 헝가리 )</option>
<option value='39'>+39 ( 바티칸  이탈리아 )</option>
<option value='40'>+40 ( 루마니아 )</option>
<option value='41'>+41 ( 스위스 )</option>
<option value='43'>+43 ( 오스트리아 )</option>
<option value='44'>+44 ( 영국 )</option>
<option value='45'>+45 ( 덴마크 )</option>
<option value='46'>+46 ( 스웨덴 )</option>
<option value='47'>+47 ( 노르웨이 )</option>
<option value='48'>+48 ( 폴란드 )</option>
<option value='49'>+49 ( 독일 )</option>
<option value='51'>+51 ( 페루 )</option>
<option value='52'>+52 ( 멕시코 )</option>
<option value='53'>+53 ( 쿠바 )</option>
<option value='54'>+54 ( 아르헨티나 )</option>
<option value='55'>+55 ( 브라질 )</option>
<option value='56'>+56 ( 칠레 )</option>
<option value='57'>+57 ( 콜롬비아 )</option>
<option value='58'>+58 ( 베네수엘라 )</option>
<option value='60'>+60 ( 말레이시아 )</option>
<option value='61'>+61 ( 크리스마스 섬  코코스킬링 제도  호주 )</option>
<option value='62'>+62 ( 인도네시아 )</option>
<option value='63'>+63 ( 필리핀 )</option>
<option value='64'>+64 ( 뉴질랜드 )</option>
<option value='65'>+65 ( 싱가포르 )</option>
<option value='66'>+66 ( 태국 )</option>
<option value='81'>+81 ( 일본 )</option>
<option selected value='82'>+82 ( 대한민국 )</option>
<option value='84'>+84 ( 베트남 )</option>
<option value='86'>+86 ( 중국 )</option>
<option value='90'>+90 ( 터키 )</option>
<option value='91'>+91 ( 인도 )</option>
<option value='92'>+92 ( 파키스탄 )</option>
<option value='94'>+94 ( 스리랑카 )</option>
<option value='95'>+95 ( 미얀마 )</option>
<option value='98'>+98 ( 이란 )</option>
<option value='212'>+212 ( 모로코 )</option>
<option value='213'>+213 ( 알제리 )</option>
<option value='216'>+216 ( 튀니지 )</option>
<option value='218'>+218 ( 리비아 )</option>
<option value='220'>+220 ( 감비아 )</option>
<option value='221'>+221 ( 세네갈 )</option>
<option value='222'>+222 ( 모리타니 )</option>
<option value='223'>+223 ( 말리 )</option>
<option value='224'>+224 ( 기니 )</option>
<option value='225'>+225 ( 코트디부와르 )</option>
<option value='226'>+226 ( 부르키나파소 )</option>
<option value='227'>+227 ( 니제르 )</option>
<option value='228'>+228 ( 토고 )</option>
<option value='229'>+229 ( 베넹 )</option>
<option value='230'>+230 ( 모리셔스 )</option>
<option value='231'>+231 ( 리베리아 )</option>
<option value='232'>+232 ( 시에라리온 )</option>
<option value='233'>+233 ( 가나 )</option>
<option value='234'>+234 ( 나이지리아 )</option>
<option value='235'>+235 ( 차드 )</option>
<option value='236'>+236 ( 중앙아프리카공화국 )</option>
<option value='237'>+237 ( 카메룬 )</option>
<option value='238'>+238 ( 까뽀베르데 )</option>
<option value='239'>+239 ( 쌍투메 프린시페 )</option>
<option value='240'>+240 ( 적도 기니 )</option>
<option value='241'>+241 ( 가봉 )</option>
<option value='242'>+242 ( 콩고 )</option>
<option value='243'>+243 ( 콩고민주공화국 )</option>
<option value='244'>+244 ( 앙골라 )</option>
<option value='245'>+245 ( 기네비쏘 )</option>
<option value='248'>+248 ( 세이셸 )</option>
<option value='249'>+249 ( 수단 )</option>
<option value='250'>+250 ( 르완다 )</option>
<option value='251'>+251 ( 이디오피아 )</option>
<option value='252'>+252 ( 소말리아 )</option>
<option value='253'>+253 ( 지부티 )</option>
<option value='254'>+254 ( 케냐 )</option>
<option value='255'>+255 ( 탄자니아 )</option>
<option value='256'>+256 ( 우간다 )</option>
<option value='257'>+257 ( 브룬디 )</option>
<option value='258'>+258 ( 모잠비크 )</option>
<option value='260'>+260 ( 잠비아 )</option>
<option value='261'>+261 ( 마다가스카르 )</option>
<option value='263'>+263 ( 짐바브웨 )</option>
<option value='264'>+264 ( 나미비아 )</option>
<option value='265'>+265 ( 말라위 )</option>
<option value='266'>+266 ( 레소토 )</option>
<option value='267'>+267 ( 보츠와나 )</option>
<option value='268'>+268 ( 스와질랜드 )</option>
<option value='269'>+269 ( 코모르 )</option>
<option value='290'>+290 ( 세인트 헬레나 )</option>
<option value='297'>+297 ( 아루바 )</option>
<option value='298'>+298 ( 페로 군도 )</option>
<option value='299'>+299 ( 그린랜드 )</option>
<option value='350'>+350 ( 영국령 지브롤터 )</option>
<option value='351'>+351 ( 포르투갈 )</option>
<option value='352'>+352 ( 룩셈부르크 )</option>
<option value='353'>+353 ( 아일랜드 )</option>
<option value='354'>+354 ( 아이슬란드 )</option>
<option value='355'>+355 ( 알바니아 )</option>
<option value='356'>+356 ( 몰타 )</option>
<option value='357'>+357 ( 사이프러스 )</option>
<option value='358'>+358 ( 핀란드 )</option>
<option value='359'>+359 ( 불가리아 )</option>
<option value='370'>+370 ( 리투아니아 )</option>
<option value='371'>+371 ( 라트비아 )</option>
<option value='372'>+372 ( 에스토니아 )</option>
<option value='373'>+373 ( 몰도바 )</option>
<option value='374'>+374 ( 아르메니아 )</option>
<option value='375'>+375 ( 벨라루스 )</option>
<option value='376'>+376 ( 안도라 )</option>
<option value='377'>+377 ( 모나코 )</option>
<option value='378'>+378 ( 산마리노 )</option>
<option value='380'>+380 ( 우크라이나 )</option>
<option value='381'>+381 ( 세르비아 )</option>
<option value='382'>+382 ( 몬테네그로 )</option>
<option value='385'>+385 ( 크로아티아 )</option>
<option value='386'>+386 ( 슬로베니아 )</option>
<option value='387'>+387 ( 보스니아 헤르체고비나 )</option>
<option value='389'>+389 ( 마케도니아 )</option>
<option value='420'>+420 ( 체코 )</option>
<option value='421'>+421 ( 슬로바키아 )</option>
<option value='423'>+423 ( 리히텐슈타인 )</option>
<option value='500'>+500 ( 포클랜드 )</option>
<option value='501'>+501 ( 벨리즈 )</option>
<option value='502'>+502 ( 과테말라 )</option>
<option value='503'>+503 ( 엘살바도르 )</option>
<option value='504'>+504 ( 온두라스 )</option>
<option value='505'>+505 ( 니카라과 )</option>
<option value='506'>+506 ( 코스타리카 )</option>
<option value='507'>+507 ( 파나마 )</option>
<option value='508'>+508 ( 세인트 피에르 미퀠론 )</option>
<option value='509'>+509 ( 아이티 )</option>
<option value='591'>+591 ( 볼리비아 )</option>
<option value='592'>+592 ( 가이아나 )</option>
<option value='593'>+593 ( 에쿠아도르 )</option>
<option value='595'>+595 ( 파라과이 )</option>
<option value='597'>+597 ( 수리남 )</option>
<option value='598'>+598 ( 우루과이 )</option>
<option value='672'>+672 ( 남극 )</option>
<option value='673'>+673 ( 브루나이 )</option>
<option value='674'>+674 ( 나우루 )</option>
<option value='675'>+675 ( 파푸아뉴기니 )</option>
<option value='676'>+676 ( 통가 )</option>
<option value='677'>+677 ( 솔로몬 군도 )</option>
<option value='678'>+678 ( 바누아투 )</option>
<option value='679'>+679 ( 피지 )</option>
<option value='680'>+680 ( 팔라우 )</option>
<option value='681'>+681 ( 월리스 후트나 )</option>
<option value='682'>+682 ( 쿠크 군도 )</option>
<option value='683'>+683 ( 니우에 )</option>
<option value='685'>+685 ( 사모아 )</option>
<option value='686'>+686 ( 키리바시 )</option>
<option value='687'>+687 ( 뉴 칼레도니아 )</option>
<option value='688'>+688 ( 투발루 )</option>
<option value='689'>+689 ( 프랑스령 폴리네시아 )</option>
<option value='690'>+690 ( 토켈라우 )</option>
<option value='691'>+691 ( 마이크로네시아 )</option>
<option value='692'>+692 ( 마샬 군도 )</option>
<option value='850'>+850 ( 북한 )</option>
<option value='852'>+852 ( 홍콩 )</option>
<option value='853'>+853 ( 마카오 )</option>
<option value='855'>+855 ( 캄보디아 )</option>
<option value='856'>+856 ( 라오스 )</option>
<option value='870'>+870 ( 핏케언 군도 )</option>
<option value='880'>+880 ( 방글라데시 )</option>
<option value='886'>+886 ( 대만 )</option>
<option value='960'>+960 ( 몰디브 )</option>
<option value='961'>+961 ( 레바논 )</option>
<option value='962'>+962 ( 요르단 )</option>
<option value='963'>+963 ( 시리아 )</option>
<option value='964'>+964 ( 이라크 )</option>
<option value='965'>+965 ( 쿠웨이트 )</option>
<option value='966'>+966 ( 사우디아라비아 )</option>
<option value='967'>+967 ( 예멘 )</option>
<option value='968'>+968 ( 오만 )</option>
<option value='971'>+971 ( 아랍에미리트 )</option>
<option value='972'>+972 ( 이스라엘 )</option>
<option value='973'>+973 ( 바레인 )</option>
<option value='974'>+974 ( 카타르 )</option>
<option value='975'>+975 ( 부탄 )</option>
<option value='976'>+976 ( 몽골 )</option>
<option value='977'>+977 ( 네팔 )</option>
<option value='992'>+992 ( 타지키스탄 )</option>
<option value='993'>+993 ( 투르크메니스탄 )</option>
<option value='994'>+994 ( 아제르바이잔 )</option>
<option value='995'>+995 ( 조지아 )</option>
<option value='996'>+996 ( 키르기스스탄 )</option>
<option value='998'>+998 ( 우즈베키스탄 )</option>
</select>
</div>
<div class='col-sm-7'>
<input class='form-control'  id="gu_phone" name='gu_phone' type='tel' value='${dto2.gu_phone}'>
</div>
</div>
<div class="notice" id="phone_check"></div>
<small class='help-block'>• 상시 연락할 수 있는 전화번호를 알려주시면 여행자에게 큰 도움이 됩니다.<br/></small>
</div>
</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
가이드 이메일
<span>*</span>
</label>
<div class='col-sm-9'>
${dto2.gu_email}
</div>
</div>
<script type="text/javascript">
$(function(){
	$("#pwchange").click(function(){
		   $("#pw").slideToggle();
});

});
</script>
<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
비밀번호
<span>*</span>
</label>
<div class='col-sm-9'>
**********               
<div id="pwchange" class='btn btn-success btn-file ladda-button' data-spinner-color='DarkGrey' data-style='zoom-out'>
<span class='ladda-label'></span>
<i aria-hidden='true' class='icon wb-upload'></i>
비밀번호 변경
</div>
</div>
</div>
<div id="pw"  style="display: none;">
<div class='form-group clearfix' >
<label class='col-sm-3 control-label font-weight-700'>
변경할 비밀번호
<span>*</span>
</label>
<div class='col-sm-9'>
<input class='form-control' id="gu_pw" name='gu_pw' type='text' >
<div class="notice" id="pw_check"></div>
</div>

</div>
<div class='form-group clearfix' >
<label class='col-sm-3 control-label font-weight-700'>
변경할 비밀번호 확인
<span>*</span>
</label>
<div class='col-sm-9'>
<input class='form-control'id="gu_pwchk"  name='gu_pwchk' type='text' >
<div class="notice" id="pwchk_check"></div>
</div>

</div>
</div>
<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
가이드 은행명
<span>*</span>
</label>
<div class='col-sm-9'>
<input class='form-control' id="gu_bank" name='gu_bank' type='text' value='${dto2.gu_bank}'>
<div class="notice" id="bank_check"></div>
</div>

</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
가이드 계좌번호
<span>*</span>
</label>
<div class='col-sm-9'>
<input class='form-control' id="gu_acc" name='gu_acc' type='text' value='${dto2.gu_acc}'>
<div class="notice" id="acc_check"></div>
</div>

</div>

<div class='form-group clearfix'>
<label class='col-sm-3 control-label font-weight-700'>
가이드 가입일
<span>*</span>
</label>
<div class='col-sm-9'>
<f:formatDate value="${dto2.gu_regdate}" pattern="yyyy-MM-dd"/>
</div>
</div>


<div class='margin-bottom-10 margin-top-40 clearfix'>
<div class='row'>
<div class='col-sm-3'></div>
<div class='col-sm-9'>
<div class='row'>
<div class='center-block clearfix'>
<div class='col-xs-6 padding-right-5'>
<a class="btn btn-block btn-default" href="https://www.myrealtrip.com/partner/edit">취소하기</a>
</div>
<div class='col-xs-6 padding-left-5'>
<button class='btn btn-block btn-primary' type='submit'>저장하기</button>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</form>

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

</body>
</html>
