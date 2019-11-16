<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class='no-js css-menubar' lang='en'>
<head>
<meta charset='utf-8'>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>상품관리페이지</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<style type="text/css">
#hello {
	border: soild red 1px;
}

#header {
	text-align: center;
}

#container {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}

#bar {
	padding: 20px;
}
#body {
	width: 300px;
	padding: 20px;
	padding-left: 15px;
	margin-bottom: 20px;
	text-align: center;
	display: table;
	margin-left: auto;
	margin-right: auto;
}
	
.image { overflow: hidden; }

.image  img {
    -webkit-transform:scale(1);
    -moz-transform:scale(1);
    -ms-transform:scale(1); 
    -o-transform:scale(1);  
    transform:scale(1);
    -webkit-transition:.3s;
    -moz-transition:.3s;
    -ms-transition:.3s;
    -o-transition:.3s;
    transition:.3s;
}
.image:hover img {
    -webkit-transform:scale(1.2);
    -moz-transform:scale(1.2);
    -ms-transform:scale(1.2);   
    -o-transform:scale(1.2);
    transform:scale(1.2);
}

}
</style>

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
<script>
  Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
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
<span>${ldto.m_name}님 환영합니다</span>

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
<a class='animsition-link' href='memberalllist.do'>
<i aria-hidden='true' class='site-menu-icon wb-flag'></i>
<span class='site-menu-title'>전체회원조회</span>
</a>
</li>
<li class='site-menu-item has-sub'>
<a href='javascript:void(0)'>
<i aria-hidden='true' class='site-menu-icon wb-chat-text'></i>
<span class='site-menu-title'>가이드 관리</span>
<span class='site-menu-arrow'></span>
</a>
<ul class='site-menu-sub'>
<li class='site-menu-item'>
<a class='animsition-link' href='guideappform.do?pnum=1'>
<span class='site-menu-title'>가입승인</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='goodsappform.do'>
<span class='site-menu-title'>여행상품 승인</span>
</a>
</li>
<li class='site-menu-item'>
<a class='animsition-link' href='guidesalary.do'>
<span class='site-menu-title'>정산관리</span>
</a>
</li>
</ul>
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
<li class='active'>가이드관리</li>
</ol>

</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-lg-12'>
<div class='panel panel-bordered'>
<div class='panel-heading'>
<div class='panel-title'>
여행상품승인
<!-- 상품 갯수 -->
<span class='badge badge-success'></span>

</div>
</div>
<div class='panel-body'>
<div class='row'>
<div class='col-md-12'>
<table class='table table-striped table-hover toggle-circle'>


<thead>


<table border="1">
   <col width="188px">
   <col width="50px">
   <col width="90px">
   <col width="60px">
   <col width="80px">
   <col width="110px">
   <col width="300px">
   <col width="80px">
   <col width="80px">
   <col width="50px">
   <tr>
   	  <th>여행 대표사진</th>  
   	  <th>가이드 이메일</th>
   	  <th>가이드 이름</th>
   	  <th>가이드 연락처</th>
      <th>지역</th>   
      <th>등록일</th>
      <th>상품명</th>
      <th>총판매 수</th>
      <th>승인 여부</th>
      <th>승인 확인</th>
   </tr>
      <c:choose>
         <c:when test="${empty list}">
            <tr>
               <td colspan="10" style="text-align: center;">---승인할 상품이 없습니다.---</td>
            </tr>   
         </c:when>
         <c:otherwise>
            <c:forEach items="${list}" var="dto">
            <tr>
               <td>
               <div class="image">
				<img id="img" src="${dto.g_thumbimg}" onclick="goods(${dto.g_seq})"/>
				</div>	  
               </td>
               <td>${dto.gu_email}</td>
               <td>${dto.gu_name}</td>
               <td>${dto.gu_phone}</td>
               <td>${dto.g_area}</td>
               <td><fmt:formatDate value="${dto.g_regdate}" pattern="yyyy년MM월dd일"/></td>
               <td>${dto.g_name}</td>
               <td>${dto.g_res}</td>
               <c:choose>
        	   <c:when test="${dto.g_flag eq '1'}">
               <td style="color:green;">승인 완료</td>
               <td><input type="button" value="승인취소" onclick="appNo(${dto.g_seq})"/></td>
               </c:when>
               <c:otherwise>
               <td style="color:red;">승인 대기</td>
               <td><input type="button" value="승인" onclick="app(${dto.g_seq})"/></td>
               </c:otherwise>
               </c:choose>
            </tr>   
            </c:forEach>
         </c:otherwise>
      </c:choose>
</table>
<script type="text/javascript">
function goods(g_seq){
	location.href="goodsdetail.do?g_seq="+g_seq;
}
function app(g_seq){
	location.href="goodsapp.do?g_seq="+g_seq;
}
function appNo(g_seq){
	location.href="goodsappno.do?g_seq="+g_seq;
}
</script>


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

</body>
</html>
