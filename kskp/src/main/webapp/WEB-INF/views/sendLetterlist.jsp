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
<script>
  Raven.config('https://7d40cd233b7b4666b3c2b05e5493fbc4@sentry.io/145992').install()
</script>
<style type ="text/css">
th{
text-align:center;
}

tr{
text-align:center;
}

</style>
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
<li class='active'>보낸 메세지</li>
</ol>

</div>
<div class='page-content container-fluid'>
<div class='row'>
<div class='col-lg-12'>
<div class='panel panel-bordered'>
<div class='panel-heading'>
<div class='panel-title'>
보낸 메세지
<!-- 상품 갯수 -->
<span class='badge badge-success'>${count1}</span>

</div>
</div>
<div class='panel-body'>
<div class='row'>
<div class='col-md-12'>
<table class='table table-striped table-hover toggle-circle'>
<thead>

<form action="sendmuldel.do" method="post">
<input type="hidden" name="l_sender" value="${dto.l_sender}">
<input type="hidden" name="l_receiver" value="${dto.l_receiver}">
<input type="hidden" name="pnum" value="${pnum}">
	

	<table border="1">
		<col width="50px">
		<col width="50px">
		<col width="100px">
		<col width="300px">
		<col width="100px">
		<tr>
			<th><input type="checkbox" onclick="allSel(this.checked)" /></th>
			<th>번호</th>
			<th>받은사람</th>
			<th>제목</th>
			<th>보낸시간</th>
		</tr>
	<c:choose>
				<c:when test="${empty list}">
		<tr>
			<td colspan="5" style="text-align : center;">---쪽지가 없습니다.---</td>
		</tr>
			</c:when>
			
				<c:otherwise>
				
				<c:forEach items="${list}" var="dto">
						<tr>
							<td><input type="checkbox" name="chk" value="${dto.l_seq}" /></td>
							<td>${dto.l_seq}</td>
							<td>${dto.l_receiver}</td>
							<td><a href="sendletterdetail.do?l_seq=${dto.l_seq}">${dto.l_title}</a></td>
							<td><f:formatDate value="${dto.l_regdate}" pattern="yyyy-MM-dd"/></td>
						</tr>
				</c:forEach>
				
			</c:otherwise>
			
	</c:choose>
<tr>
              <td colspan="7" align="center">
                  <a href="sendletterlist.do?l_sender=${ldto1.gu_email}&pnum=${map.prePageNum}">◀</a>
                  <c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" step="1">
                     <c:choose>
                        <c:when test="${pnum eq i}">
                           ${i}
                        </c:when>
                        <c:otherwise>
                           <a href="sendletterlist.do?l_sender=${ldto1.gu_email}&pnum=${i}">${i}</a>
                        </c:otherwise>
                     </c:choose>   
                  </c:forEach>
                  <a href="sendletterlist.do?l_sender=${ldto1.gu_email}&pnum=${map.nextPageNum}">▶</a>
              </td>
         </tr>
	<tr>
	<tr>
		<td colspan="5" align="right">
			<input type="submit" value="삭제"/>
		</td>
	</tr>

	
</table>
</form>





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
<script type="text/javascript">
function allSel(ele){
	var chks=document.getElementsByName("chk");
	for(var i=0;i<chks.length;i++){
		chks[i].checked=ele; 
	}
}
   	 
   	 
</script>

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
