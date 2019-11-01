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
</style>
</head>
<body>
<h1>${gdto.g_name}</h1>
<p>${gdto.g_area}</p>
<p><img id="img1" src="${gdto.g_img1}"></p>
<form action="insertpay.do" method="post">
<input type="hidden" name="p_name" value="${gdto.g_name}"/>
<input type="hidden" name="p_conts" value="${gdto.g_conts}"/>
<h3>원하는 날짜와 인원을 선택하세요.</h3>
<div id="mdp-demo"></div>
<input type="hidden"  name="p_date" id="altField" >
<p>인원 선택
<select id="pnum" name="p_num">
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
</select>
</p>
<input type="button"  id="price"  value="금액 조회">
<script>
$(function(){
	$("#price").click(function(){
		var num = $("#pnum").val();
		var price = ${gdto.g_price};
		$("#p_cost").val(num*price);
	})
})
</script>
<p>결제 금액<input type="button"  id="pay"  value="에약하기"><input type="button"  id="price"  value="장바구니 담기"></p>

<input type="text" id="p_cost" name="p_cost" value="">
</form>
<h2>${gdto.g_oneline}</h2> 
<p>${gdto.g_conts}</p>      
<div>만나는 시간<p>${gdto.mtime }</p></div>
<div>만나는 시간<p>${gdto.mtime }</p></div>
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