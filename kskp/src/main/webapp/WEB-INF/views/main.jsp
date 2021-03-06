<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<style type="text/css">
.top_nav01{
   width: 130px;
   height: 30px;
   float: right;
   margin-top: 25px;
}
.top_nav01 li{
   float: left;
   line-height: 30px;
   text-align: center;
   border-radius: 3px;
   position: relative;
}
.top_nav01 a{
   color: #fff;
   font-size: 14px;
}
.top_nav01>li:first-child a:hover{
   text-decoration: underline;
}
.icon_box{
   display: inline-block;
   width: 40px;
   height: 40px;
   border-radius: 20px;
   background-color: #ced9df;
   border: 1px solid #999;
   overflow: hidden;
   margin-top: -15px;
   margin-left: 29px;
   cursor: pointer; 
}
.icon_box img{
   width: 100%;
   height: 100%;
}
.info_box{
   width: 150px;
   height: 100px;
   border: 1px solid #ddd;
   background-color: #ededed;
   position: absolute;
   top: 40px;
   right: -6px;
   overflow: hidden;
}
.info_box li{
   width: 100%;
   height: 33.333%;
   color: #999;
   border-bottom: 1px solid #ddd;
   text-align: left;
   text-indent: 5px;
}
.info_box li:nth-child(2) span{
   font-size: 11px;
}

.info_box li a{
   display: block;
   color: #666;
}
.info_box li i{
   font-size: 10px;
}
.info_box li:hover a{
   background-color: #888;
   color: #fff;
}
	</style>
	<script>
		$(document).ready(function(){
			$('.slider').bxSlider({
				pager:true,
				controls:false,
				auto:true,
				speed:3000
			});
			$(".info_box").hide();
			$(".icon_box").click(function(){
				if($(this).next().css("display") == "none"){
					$(".info_box").slideDown(300);
				}else{
					$(".info_box").slideUp(300);
				}
			});

		});
	</script>
</head>
<body>
	<header>
		<div class="header_wrap">
			<h1>
				<a href=""><img src="img/main_logo.png" alt=""></a>
			</h1>
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
			<ul class="top_nav01">
				<li>
					<a href="servicecenter.do">고객센터</a>
				</li>
				<li class="icon">
				<c:choose>
				<c:when test="${ldto.m_img eq 'a'}">
				<div class="icon_box"><img src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png" alt=""></div>
				</c:when>
				<c:otherwise>
				<div class="icon_box"><img src="${ldto.m_img}" alt=""></div>
				</c:otherwise>
				</c:choose>
					<ul class="info_box">
						<li><a href="cartlist.do?m_seq=${ldto.m_seq}"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
						<li><a href=""><i class="fas fa-coins"></i>　내포인트　 <span> ${ldto.m_point}p</span></a></li>
						<li><a href="logout.do"><i class="fas fa-power-off"></i>　로그아웃</a></li>
					</ul>
				</li>
			</ul>
			</c:when>
			<c:when test="${ldto.m_status eq 'A'}">
			<ul class="top_nav01">
				<li>
					<a href="servicecenter.do">고객센터</a>
				</li>
				<li class="icon">
					<div class="icon_box"><img src="img/info_icon.png" alt=""></div>
					<ul class="info_box">
						<li><a href="memberlist.do"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
						<li><a href="logout.do"><i class="fas fa-power-off"></i>　로그아웃</a></li>
					</ul>
				</li>
			</ul>
			</c:when>
			<c:otherwise>
			<ul class="top_nav01">
				<li>
					<a href="servicecenter.do">고객센터</a>
				</li>
				<li class="icon">
				<c:choose>
				<c:when test="${ldto1.gu_img eq 'a'}">
				<div class="icon_box"><img src="//d2yoing0loi5gh.cloudfront.net/assets/default/user_profile_image-414acc60b27f0a258bec14c82b70dc361fc6768da9289f924f887bec1fc33849.png" alt=""></div>
				</c:when>
				<c:otherwise>
				<div class="icon_box"><img src="${ldto1.gu_img}" alt=""></div>
				</c:otherwise>
				</c:choose>
					<ul class="info_box">
						<li><a href="goodspage.do?gu_seq=${ldto1.gu_seq}"><i class="fas fa-user-alt"></i>　마이페이지</a></li>
						<li><a href="logout.do"><i class="fas fa-power-off"></i>　로그아웃</a></li>
					</ul>
				</li>
			</ul>
			</c:otherwise>
		</c:choose>	
		</div>
		<div class="line"></div>
		<div class="search_wrap">
			<div class="search_box">
				<h2>어떤곳을 찾으세요?</h2>
				<input type="text" placeholder="가이드상품을 검색해보세요!" class="text">
				<input type="submit" value="" class="button"><!--검색버튼-->
			</div>
			<div class="img_box01">
				<ul>
					<li>
                  <a href="selectarea.do?enkey=Seoul&kokey=서울&pnum=1">
                     <img src="img/main_img01.jpg" alt="">
                     <div class="over">
                        <p>서울</p>
                     </div>
                  </a>
               </li>
					<li>
                  <a href="selectarea.do?enkey=Incheon&kokey=인천&pnum=1">
                     <img src="img/main_img02.jpg" alt="">
                     <div class="over">
                        <p>인천</p>
                     </div>
                  </a>
               </li>
               	<li>
                  <a href="selectarea.do?enkey=Daejeon&kokey=대전&pnum=1">
                     <img src="img/main_img03.jpg" alt="">
                     <div class="over">
                        <p>대전</p>
                     </div>
                  </a>
               </li>
               	<li>
                  <a href="selectarea.do?enkey=Daegu&kokey=대구&pnum=1">
                     <img src="img/main_img04.jpg" alt="">
                     <div class="over">
                        <p>대구</p>
                     </div>
                  </a>
               </li>
               	<li>
                  <a href="selectarea.do?enkey=Busan&kokey=부산&pnum=1">
                     <img src="img/main_img05.jpg" alt="">
                     <div class="over">
                        <p>부산</p>
                     </div>
                  </a>
               </li>
                              	<li>
                  <a href="selectarea.do?enkey=Jeju&kokey=제주&pnum=1">
                     <img src="img/main_img06.jpg" alt="">
                     <div class="over">
                        <p>제주</p>
                     </div>
                  </a>
               </li>
				</ul>
			</div>
		</div>
	</header>
	<div id="content">
		<div class="content_wrap">
			<ul class="slider">
				<li>
					<a href="">
						<img src="img/banner_01.jpg" alt="">
					</a>
				</li>
				<li>
					<a href="">
						<img src="img/banner_02.jpg" alt="">
					</a>
				</li>
				<li>
					<a href="">
						<img src="img/banner_03.jpg" alt="">
					</a>
				</li>
			</ul>
			<h3 class="color01"><i class="fas fa-star"></i> 최근 올라온 상품<i class="fas fa-star"></i></h3>
			<div class="img_box02">
				<ul>
				<c:forEach var="dto" items="${alist}" begin="0" end="3" step="1" >
					<li>
						<a href="goodsdetail.do?g_seq=${dto.g_seq}">
							<img src="${dto.g_thumbimg}" alt="image">
							<div class="text_box">
								<p class="subtitle">${dto.g_area} - ${dto.g_category}</p>
								<h4>${dto.g_name}</h4>
								<p class="star"><!--별점 들어갈 자리-->
								<c:if test="${dto.r_star eq 1}">
								    <span>★</span>
								    <span>☆</span>
								    <span>☆</span>
								    <span>☆</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 2}">
								    <span>★</span>
								    <span>★</span>
								    <span>☆</span>
								    <span>☆</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 3}">
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>☆</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 4}">
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 5}">
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								</c:if>
								</p>
								<p class="price">${dto.g_price}원 / 1인</p>
							</div>
						</a>
					</li>
					</c:forEach>
				</ul>
			</div>
			<h3 class="color01"><i class="fas fa-star"></i> 인기 많은 순 <i class="fas fa-star"></i></h3>
			<div class="img_box02">
				<ul>
				<c:forEach var="dto" items="${blist}" begin="0" end="3" step="1" >
					<li>
						<a href="goodsdetail.do?g_seq=${dto.g_seq}">
							<img src="${dto.g_thumbimg}" alt="image">
							<div class="text_box">
								<p class="subtitle">${dto.g_area} - ${dto.g_category}</p>
								<h4>${dto.g_name}</h4>
								<p class="star"><!--별점 들어갈 자리-->
								    <c:if test="${dto.r_star eq 1}">
								    <span>★</span>
								    <span>☆</span>
								    <span>☆</span>
								    <span>☆</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 2}">
								    <span>★</span>
								    <span>★</span>
								    <span>☆</span>
								    <span>☆</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 3}">
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>☆</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 4}">
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>☆</span>
								</c:if>
								<c:if test="${dto.r_star eq 5}">
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								    <span>★</span>
								</c:if>
								</p>
								<p class="price">${dto.g_price}원 / 1인</p>
							</div>
						</a>
					</li>
					</c:forEach>
				</ul>
			</div>
			<h3 class="color02"><i class="fab fa-gratipay"></i> <i class="far fa-laugh-wink"></i> 여행 꿀팁</h3>
			<div class="img_box03">
				<ul>
					<li>
						<a href="https://www.youtube.com/watch?v=wCsCd5jWsK8">
							<img src="img/pictip.png" alt="" width="250px" height="300px">
						</a>
					</li>
					<li>
						<a href="https://www.youtube.com/watch?v=cKn77RynWp8">
							<img src="img/pictip1.png" alt="" width="250px" height="300px">
						</a>
					</li>
					<li>
						<a href="https://www.youtube.com/watch?v=EtvlAl2cOoI">
							<img src="img/pictip2.png" alt="" width="250px" height="300px">
						</a>
					</li>
					<li>
						<a href="https://www.youtube.com/watch?v=UR6AkX8H4jc&list=PLA365cDEkHfx46ZF_hZ9bzKFc9m3KLpwx&index=88">
							<img src="img/pictip3.png" alt="" width="250px" height="300px">
						</a>
					</li>
				</ul>
			</div>
			<h3 class="color03"><i class="fas fa-camera-retro"></i> <i class="fas fa-camera-retro"></i> 후기사진 모음</h3>
			<div class="img_box04">
			<c:choose>
        	 <c:when test="${empty slist}">
        	 </c:when>
        	   <c:otherwise>
				<ul>

				<c:forEach var="dto" items="${slist}" begin="0" end="39" step="1" >
					<li><a href="goodsdetail.do?g_seq=${dto.g_seq}"><img src="${dto.r_img}" alt="replyimg"></a></li>
				</c:forEach>

				
				</ul>

				</c:otherwise>
			</c:choose>
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
				   <li><a href="conditions.do">이용 약관</a></li>
	               <li><a href="privacy.do">개인정보 처리방침</a></li>
	               <li><a href="cancel.do">취소 및 환불정책</a></li>
				</ul>
				<p class="info">상호명 : (주)SWAG | 대표 : 신민철 | 사업자등록번호 : 010-12-34567 | 주소 : 서울 특별시 금천구 독산동 한신아파트 1동 703호 | 이메일 : <a href="">smc5141@naver.com</a></p>
				<p class="copy">자사는 프로젝트를 위해 만들어진 회사이며 상표등록원에 등록되어있지 않습니다.<br>copyright ⓒ <strong>SWAG.</strong> All Rights Reserved.</p>
			</div>
		</div>
	</footer>
</body>
</html>