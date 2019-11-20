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
         <style type="text/css">
      .ui-datepicker { width: 300px; display: none; font-size: 1px;}
      .ui-datepicker-week-end{padding: 0 0 !important;}
      </style>
      
      <script type="text/javascript">
      function btn_click(str){
  		var date = document.getElementById("altField");
  		var price = document.getElementById("p_cost");
  		if(str == "res"){
  			if(date.value==""){
  				alert("원하는 날짜를 클릭해주세요.");
  				date.focus();
  				return false;
  			}else if(price.value==""){	
  				alert("금액 조회 버튼을 클릭해주세요.");
  				price.focus();
  				return false;
  			}else{
  				form.action="insertcart.do";
  			}
  		}
  	}
      </script>
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
var gdate = "${gdto.g_date}";
var availableDates = gdate.split(', ');
var date = new Date();
$('#mdp-demo').multiDatesPicker({
// 	dateFormat: "mm-dd-yyyy",
    minDate:0,
	maxPicks: 1,
	beforeShowDay: function available(date){			
		var thismonth = date.getMonth()+1;
		var thisday = date.getDate();
		if(thismonth<10){
			thismonth = "0"+thismonth;
		}
		if(thisday<10){

			thisday = "0"+thisday;
		}
		mdy = thismonth + "/" + thisday + "/" + date.getFullYear();
	    if ($.inArray(mdy, availableDates) >= 0) {
	        return [true,"",""];
	    } else  {
	        return [false,"",""];
	    }
	},
	altField: '#altField'
});
    
});

  //]]></script>
   
   
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
    	  $("#btn01").click(function(){
    		  $("#reser").slideToggle();
    	  });
    	  
    	  
    	  $("#datepick").click(function(){
    		   $("#datepicker").toggle();
    	   });

    	  
    	  
    	  
  
	$("#p_num").change(function(){
		if($(this).val()==0){
			$("#btn01").attr("disabled", true);
			$("#btn01").attr("title", "인원을 선택해주세요");
		}else{
			$("#btn01").attr("disabled", false);
		}
		var select = $(this).val();
		var price = Number("${gdto.g_price}");
		var sum = select*Number(price);
		$("#p_cost").val(sum);
		$(".type02").text(select+"x ${gdto.g_price}원")
		$(".type03").text(sum+"원")
		$(".type04").text(sum+"원")
		
	});
	
	$("#p_num").click(function(){
		  $("#datepicker").hide();
	});

	$("form").submit(function(){
		if($("#altField").val() == ""){
			alert("달력 날짜를 선택해주세요.");
			$("#mdp-demo").focus();
			return false;
		}else if($("#people").val()==0){
			alert("인원을 선택해주세요.");
			$("#p_num").focus();
			return false;
		}else{
			 if (confirm("확인버튼을 누르면 결제화면으로 이동합니다.") == true){    //확인
			     document.removefrm.submit();
			 }else{   //취소
			     return false;
			 }
		}
	});

	
	$("#reg").click(function(){
		$("#altField").focus();
	})
	
	
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
         <div class="left_con">
            <h2>[${gdto.g_category}]${gdto.g_name}(${gdto.g_area})</h2>
            <div class="sub_box">
               <span><a href="">대한민국</a></span> 
               <span>　>　</span> 
               <i class="fas fa-map-marker-alt"></i>　<span><a href="">${gdto.g_area}</a></span>
               <div class="star_box">
                  <span>★★★★★</span>
               </div>
            </div>
            <a href="" class="main_img">
               <img src="${gdto.g_img1}" alt="">
            </a>
                <form action="kakaoPay.do" method="post"> 
                <input type="hidden" name="p_name" value="${gdto.g_name}"/>
				<input type="hidden" name="p_conts" value="${gdto.g_conts}"/>
				<input type="hidden" name="p_meet" value="${gdto.g_address}"/>
				<input type="hidden" name="g_seq" value="${gdto.g_seq}"/>
				<input type="hidden" name="g_thumbimg" value="${gdto.g_thumbimg}"/>  
                  <input type="hidden" name="p_cost" id="p_cost">
                  <input type="hidden" name="m_seq" value="${ldto.m_seq}"/>
            <div class="date_box">
               <h3>날짜와 인원을 선택하세요</h3>
               <div class="inner_wrap">
                  <a id="datepick" style="cursor:pointer;" class="date_button"><i  class="far fa-calendar-alt"></i>
                    날짜 선택 <input type="text" style='color:#00bcf8; text-align: center; border:none; font-size: 15px' name="p_date" id="altField" >        </a>
                           
           
                
                 <select name="p_num" id="p_num">
                 
                   <option value="0">인원을 선택하세요</option>
     
                  <c:forEach var="i" begin="1" end="${gdto.g_people}">       
                 <option value="${i}">${i}</option>
 
                  </c:forEach>
                  </select>
                  <input type="button" value="금액 조회하기" disabled="disabled" id="btn01" class="btn">
                  <div id="btn01chk"></div>
              		 </div>
                               	<div id="datepicker" style="display: none; " >
					 <div id="mdp-demo" style="display: block; position: absolute; z-index: 100;"  ></div>
				
				</div>   
               <div class="reser_box" id="reser" style="display: none;">
                  <div class="inner_box">
                     <span class="type01" id="altField1"></span>
                     <div class="inner_price">
                        <span class="type02">5 x \${gdto.g.price}</span>
                        <span class="type03"></span>
                     </div>
                     <div class="line"></div>
                     <p>총 여행경비<span class="type04"></span></p>
                  </div>
                  <input type="submit" value="예약하기" id="reg_submit"  class="btn02"> 
            
               </div>
            </div>
            </form>
    
            <div class="product">
               <h3>${gdto.g_oneline}</h3>
               <div class="p_wrap">
                  <p><c:out value="${gdto.g_conts}" />
                  </p>
               </div>
            </div>
            <div class="tip_box">
               <h4>안내사항</h4>
               <p class="sub_text"><c:out value="${gdto.g_info}" /></p>
               <div class="line02"></div>
               <h3>만나는 시간</h3>
               <p class="sub_text"><c:choose><c:when test="${gdto.g_mtime < 13}">오전&nbsp;</c:when>
<c:otherwise>오후&nbsp;</c:otherwise></c:choose>
				${gdto.g_mtime}시
				</p>
               <div class="line02"></div>
               <h3>만나는 장소</h3>
               <img src="img/map_icon.png" alt="" class="map_icon">
               <h4 class="img_title">${gdto.g_address}</h4>
               <div class="map_box">
                  <a id="mapimg" style="cursor:pointer;" >지도보기v</a>
                  <div class="inner_img" >
                  <a href="https://www.google.com/maps/search/?api=1&query=${gdto.g_lat},${gdto.g_lng}" target="_blank" data-turbolinks="false"></a>
                     <img src="https://maps.googleapis.com/maps/api/staticmap?center=${gdto.g_lat},${gdto.g_lng}&markers=size:mid%7Ccolor:red%7Clabel:E%7C37.5643374782433,126.976625457912&zoom=18&scale=4&size=344x218&key=AIzaSyDhggmQMw_dzIAkkG9vIF6mTO9ZwU81z6Q" alt="">
                     <img src="https://maps.googleapis.com/maps/api/streetview?location=${gdto.g_lat},${gdto.g_lng}&zoom=18&scale=4&size=344x218&key=AIzaSyDhggmQMw_dzIAkkG9vIF6mTO9ZwU81z6Q" alt="">
                  </div>
               </div>
            </div>
            <div class="guide_info">
               <div class="top_box">
                  <img src="${gdto.gu_img}" alt="">
                  <span><a href="">${gdto.gu_name}</a></span>
                  <input type="submit" value="쪽지보내기" class="btn03">
               </div>
               <p id="guideintro"><c:out value="${gdto.g_info}" /></p>
            </div>
            <h3>여행자 후기사진</h3>
            <div class="pho_box">
               <a href=""><img src="img/main_img01.jpg" alt=""></a>
               <a href=""><img src="img/main_img02.jpg" alt=""></a>
               <a href=""><img src="img/main_img03.jpg" alt=""></a>
            </div>
            <h3>후기 <span class="color">${reviewcount}</span></h3>
            <div class="total">
               <div class="inner_left">
                  <h4>${avg}</h4>
                  <div class="star_box">
                  	 <c:choose>
                     <c:when test="${avg > 4}">
                     <span>★★★★★</span>
                     </c:when>
                     <c:when test="${avg <= 4.5 && avg >= 4}">
                     <span>★★★★☆</span>
                     </c:when>
                     <c:when test="${avg < 4 && avg >= 3}">
                     <span>★★★☆☆</span>
                     </c:when>
                     <c:when test="${avg < 3 && avg >= 2}">
                     <span>★★☆☆☆</span>
                     </c:when>
                     <c:when test="${avg < 2 && avg >= 1}">
                     <span>★☆☆☆☆</span>
                     </c:when>
                      <c:when test="${avg < 1}">
                     <span>☆☆☆☆☆</span>
                     </c:when>
                     </c:choose>
                  </div>
               </div>
               <div class="inner_right">
                  <p><span>★★★★★</span> <span>-${star5}명</span></p>
                  <p><span>★★★★</span> <span>-${star4}명</span></p>
                  <p><span>★★★</span> <span>-${star3}명</span></p>
                  <p><span>★★</span> <span>-${star2}명</span></p>
                  <p><span>★</span> <span>-${star1}명</span></p>
               </div>
            </div>
            <ul class="review_box">
            <c:choose>
		<c:when test="${empty list}">
			<h3>처음으로 후기를 남겨주세요~</h3>
		</c:when>
		<c:otherwise>
		<c:forEach items="${list}" var="dto">
               <li>
                 <div class="star_box">
                 <c:choose>
					<c:when test="${dto.r_star eq 1}">
						<span>★☆☆☆☆</span>
					</c:when>
					<c:when test="${dto.r_star eq 2}">
						<span>★★☆☆☆</span>
					</c:when>
					<c:when test="${dto.r_star eq 3}">
						<span>★★★☆☆</span>
					</c:when>
					<c:when test="${dto.r_star eq 4}">
						<span>★★★★☆</span>
					</c:when>
					<c:when test="${dto.r_star eq 5}">
						<span>★★★★★</span>
					</c:when>
				</c:choose>
                </div>
                  <span class="id">${dto.m_name}</span><br/><p>&nbsp;&nbsp;<f:formatDate value="${dto.r_regdate}" pattern="yyyy-MM-dd HH:MM"/> </p>
                   <p><c:out value="${dto.r_conts}" /></p>
                   <c:if test="${dto.r_ans != null}"><br/>
                   <span>&nbsp;&nbsp;&nbsp;ㄴ${gdto.gu_name} [가이드]</span> 
                    <br/>&nbsp;&nbsp;&nbsp;&nbsp;<p><c:out value="${dto.r_ans}" /></p>
			</c:if>
                    
               </li>
               </c:forEach>
               </c:otherwise>
               </c:choose>
            </ul>
         </div>
         <div class="right_con">
            <div class="price_box">
               <span class="price">${gdto.g_price}원</span><span class="sub01">/1인</span>
            </div>
            <table>
               <tr>
                  <th>1~${gdto.g_people}인</th>
                  <td>${gdto.g_price}원</td>
               </tr>
            </table>
            <input type="button" id="reg" value="예약하기" class="reservation">
            <input type="button" value="장바구니에 담기" class="wish" onclick='return btn_click("res");'>
            <div class="info">
               <div class="img_box">
                  <img src="${gdto.gu_img}" alt="">
               </div>
               <span><a href="">${gdto.gu_name}</a></span>
               <a href="" class="mail"><i class="far fa-envelope"></i> 문의하기</a>
            </div>
         </div>
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