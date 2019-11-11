<%@page import="com.hk.kskp.dtos.MembersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>상품상세페이지</title>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script>
    type="text/javascript"
    src="//code.jquery.com/jquery-2.2.4.js"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
</script>

<link rel="stylesheet" type="text/css" href="/css/result-light.css">
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhggmQMw_dzIAkkG9vIF6mTO9ZwU81z6Q&callback=initMap"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.js"></script>
<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/pepper-grinder/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.css">

<style id="compiled-css" type="text/css">
      /* 
Just fixing jsfiddle embedded autosizing problem, 
this style is not needed for MDP use.
*/
body { height: 400px; }
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
var gdate = "${gdto.g_date}";
var availableDates = gdate.split(', ');
var date = new Date();
$('#mdp-demo').multiDatesPicker({
// 	dateFormat: "mm-dd-yyyy",
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
	    } else {
	        return [false,"",""];
	    }
	},
	altField: '#altField'
});
    
});

  //]]></script>
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
#img1{
width: 700px;
height: 500px;
}
.map{
width: 400px;
height: 250px;
}
#icon{
width: 70px;
height: 70px;
}
#address{
font-size: 18px;
font-weight: 700;
color: #343a40;
    }
#gname{
border: none;
width : 470px;
overflow:visible;
    }

</style>
</head>
<body>
<h1>${gdto.g_name}</h1>

<p>대한민국 > <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMCIgaGVpZ2h0PSIxMCIgdmlld0JveD0iMCAwIDEwIDEwIj4KICAgIDxwYXRoIGZpbGw9IiM4NDhDOTQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuNTcxIDRhMS40MyAxLjQzIDAgMSAxIDIuODU5LjAwMUExLjQzIDEuNDMgMCAwIDEgMy41NyA0ek0xIDRjMCAzIDQgNiA0IDZzNC0zIDQtNmMwLTIuMjExLTEuNzg5LTQtNC00LTIuMjExIDAtNCAxLjc4OS00IDR6Ii8+Cjwvc3ZnPgo=" alt="area"> ${gdto.g_area}</p>

<p><img id="img1" src="${gdto.g_img1}"></p>
<hr>
<form name="form" method="post">
<input type="hidden" name="p_name" value="${gdto.g_name}"/>
<input type="hidden" name="p_conts" value="${gdto.g_conts}"/>
<input type="hidden" name="p_meet" value="${gdto.g_address}"/>
<input type="hidden" name="g_seq" value="${gdto.g_seq}"/>
<input type="hidden" name="g_thumbimg" value="${gdto.g_thumbimg}"/>
<c:choose>
<c:when test="${ldto.m_status eq 'M'}">
<h3>원하는 날짜와 인원을 선택하세요.</h3>
<input type="hidden" name="m_seq" value="${ldto.m_seq}"/>
<div id="mdp-demo">
<input type="hidden"  name="p_date" id="altField" >
<p>인원 선택
<select id="pnum" name="p_num">
	  <c:forEach var="i" begin="1" end="${gdto.g_people}">
	  <option value="<c:out value="${i}"/>" selected="selected"><c:out value="${i}"/></option>
	  </c:forEach>
</select>

<input type="button"  id="price"  value="금액 조회">
<script>
$(function(){
	$("#price").click(function(){
		var num = $("#pnum").val();
		var price = ${gdto.g_price};
		$("#p_cost").val(num*price);
	})
})

function btn_click(str){
	var date = document.getElementById("altField");
	var price = document.getElementById("p_cost");
	if(str == "pay"){
		if(date.value==""){
			alert("원하는 날짜를 클릭해주세요.");
			date.focus();
			return false;
		}else if(price.value==""){	
			alert("금액 조회 버튼을 클릭해주세요.");
			price.focus();
			return false;
		}else{
			form.action="kakaoPay.do";
		}
	}else if(str == "res"){
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
<input type="text" id="p_cost" name="p_cost" value="" placeholder="결제 금액">
<input type="submit" value="예약하기" onclick='return btn_click("pay");'>
<input type="submit" value="장바구니 담기" onclick='return btn_click("res");'>
</p>
</div>
</form>
</c:when>
<c:otherwise>
</c:otherwise>
</c:choose>
<hr>
<h2>${gdto.g_oneline}</h2> 
<div style="white-space:pre;"><c:out value="${gdto.g_conts}" /></div>
<hr>
<h3>안내사항</h3> 
<div style="white-space:pre;"><c:out value="${gdto.g_info}" /></div>
<hr>

<div><h2>만나는 시간</h2><br/><p>

<c:choose>
<c:when test="${gdto.g_mtime < 13}">
오전
</c:when>
<c:otherwise>
오후
</c:otherwise>
</c:choose>

${gdto.g_mtime} 시</p></div>
<hr>
<div>
<h2>만나는 장소</h2>
<img id="icon" src="img/63a3141ac6b918b94f2b1688ffc92fb4.png" alt="googleicon"/>
<h3 id="address">${gdto.g_address}</h3>
<a href="https://www.google.com/maps/search/?api=1&query=${gdto.g_lat},${gdto.g_lng}" target="_blank" data-turbolinks="false">
<img class="map" src="https://maps.googleapis.com/maps/api/staticmap?center=${gdto.g_lat},${gdto.g_lng}&markers=size:mid%7Ccolor:red%7Clabel:E%7C37.5643374782433,126.976625457912&zoom=18&scale=4&size=344x218&key=AIzaSyDhggmQMw_dzIAkkG9vIF6mTO9ZwU81z6Q" alt="googlemap">
<img class="map" src="https://maps.googleapis.com/maps/api/streetview?location=${gdto.g_lat},${gdto.g_lng}&zoom=18&scale=4&size=344x218&key=AIzaSyDhggmQMw_dzIAkkG9vIF6mTO9ZwU81z6Q" alt="googlemap"/>
</a>
</div>
<hr>
<div><h3>후기</h3></div>
</body>
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
</html>