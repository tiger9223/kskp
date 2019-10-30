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
alert(availableDates[0],availableDates[1]);
$('#mdp-demo').multiDatesPicker({
// 	dateFormat: "mm-dd-yyyy",
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
</style>
</head>
<body>
<h1>상품 상세보기</h1>
<table border="1">
   <col width="188px">
   <col width="50px">
   <col width="100px">
   <col width="300px">
   <col width="80px">
   <tr>
   	  <th>여행 대표사진</th>  
      <th>지역</th>   
      <th>투어날짜</th>
      <th>상품명</th>
      <th>총판매 수</th>
   </tr> 
            <tr>
               <td><img id="img" src="${gdto.g_thumbimg}"/></td>
               <td>${gdto.g_area}</td>
               <td> <div id="mdp-demo"></div>
				<input type="text"  name="g_date" id="altField" ></td>
               <td>${gdto.g_name}</td>
               <td>${gdto.g_res}</td> 
            </tr>   
</table>
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