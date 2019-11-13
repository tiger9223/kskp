<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>SWAG / ${enkey}</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/product.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	<script src="js/jquery-1.11.3.min.js"></script>
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
		var key = "${kokey}";
			if(key=="서울"){
				$('.under').stop(true).animate({
					left:'351px'
				});
			}else if(key=="인천"){
				$('.under').stop(true).animate({
					left:'436px'
				});
			}else if(key=="대전"){
				$('.under').stop(true).animate({
					left:'519px'
				});
			}else if(key=="대구"){
				$('.under').stop(true).animate({
					left:'603px'
				});
			}else if(key=="부산"){
				$('.under').stop(true).animate({
					left:'686px'
				});
			}else if(key=="제주"){
				$('.under').stop(true).animate({
					left:'771px'
				});
			}
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
	    var $layer = $('.left_menu'); 
	    var layerTopOffset = 0;  
	    $layer.css('position', 'absolute');
	 
	    if (top > 0 )
	        $win.scrollTop(layerTopOffset+top);
	    else
	        $win.scrollTop(0);
	  
	    $(window).scroll(function(){
	        yPosition = $win.scrollTop() - 388;
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
	<header 	style= "background: url(img/back_${enkey}.jpg) no-repeat;">
		<div class="header_wrap">
			<h1>
				<a href="main.do"><img src="img/main_logo.png" alt=""></a>
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
					<div class="icon_box"><img src="img/info_icon.png" alt=""></div>
					<ul class="info_box">
						<li><a href="mypage.do?seq=${ldto.m_seq}"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
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
						<li><a href="mypage.do?seq=${ldto.m_seq}"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
						<li><a href="memberalllist.do"><i class="fas fa-coins"></i>　전체회원조회</a></li>
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
						<li><a href="mypage.do?seq=${ldto1.gu_seq}"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
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
		<div class="line"></div>
		<p class="title">${kokey}</p>
		<p class="subtitle">${enkey}</p>
	</header>
	<div id="content">
		<div class="content_wrap">
			<div class="left_menu">
				<ul class="menu01">
					<li><a href="selectarea.do?enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-th-large"></i>전체</a> </li>
					<li><a href="selectarea.do?cate=박물관/미술관&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-atlas"></i>박물관 / 미술관</a> </li>
					<li><a href="selectarea.do?cate=국립공원&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-tree"></i>국립공원</a> </li>
					<li><a href="selectarea.do?cate=쇼핑&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-shopping-cart"></i>쇼핑</a> </li>
					<li><a href="selectarea.do?cate=시티투어&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-bus-alt"></i>시티투어</a> </li>
					<li><a href="selectarea.do?cate=맛집/카페&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-utensils"></i>맛집 / 카페</a> </li>
					<li><a href="selectarea.do?cate=액티비티&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-swimmer"></i>액티비티</a> </li>
					<li><a href="selectarea.do?cate=야경&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-moon"></i>야경</a> </li>
					<li><a href="selectarea.do?cate=통역/비즈니스&enkey=${enkey}&kokey=${kokey}&pnum=1"><i class="fas fa-briefcase"></i>통역 / 비즈니스</a> </li>
				</ul>
				<ul class="menu02">
					<li><i class="far fa-calendar-alt"></i> 날짜</li>
				</ul>
			</div>
			<div class="con_box">
				<ul class="menu03">
					<li><a href="">· 인기순</a></li>
					<li><a href="">· 후기순</a></li>
					<li><a href="">· 가격순</a></li>
					<li><a href="">· 신상품순</a></li>
				</ul>
				<c:forEach items="${list}" var="gdto">
				<c:set var="key" value="${kokey}" />
				<c:if test="${key eq gdto.g_area}">
					<ul class="menu04">
					<li>
						<a href="goodsdetail.do?g_seq=${gdto.g_seq}">
							<img src="${gdto.g_img1}" alt="">
							<div class="text_box">
								<p class="title01">${gdto.g_area} > ${gdto.g_category}</p>
								<h4>[투어] ${gdto.g_name}</h4>
								<p class="name">${gdto.gu_name}</p>
								<span class="star">
									<span>별</span>
									<span>별</span>
									<span>별</span>
									<span>별</span>
									<span>별</span>
								</span>
								<span class="time">${gdto.g_time}시간 소요</span>
								<span class="price">${gdto.g_price}원 / 1인</span>
							</div>
						</a>
					</li>
				</ul>
				</c:if>
				</c:forEach>

				<div class="pager">
					<a href="selectarea.do?cate=${cate}&enkey=${enkey}&kokey=${kokey}&pnum=${map.prePageNum}">≪</a>
					<c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" step="1">
						<c:choose>
							<c:when test="${pnum eq i}">
								${i}
							</c:when>
							<c:otherwise>
								<a href="selectarea.do?cate=${cate}&enkey=${enkey}&kokey=${kokey}&pnum=${i}">${i}</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<a href="selectarea.do?cate=${cate}&enkey=${enkey}&kokey=${kokey}&pnum=${map.nextPageNum}">≫</a>
				</div>
			</div>
		</div>
	</div>
	<div class="line02"></div>
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