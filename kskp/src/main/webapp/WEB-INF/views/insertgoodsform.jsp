<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
 <script
    type="text/javascript"
    src="//code.jquery.com/jquery-2.2.4.js"
    
  ></script>
    <link rel="stylesheet" type="text/css" href="/css/result-light.css">

      <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
      <script type="text/javascript" src="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.js"></script>
      <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/pepper-grinder/jquery-ui.css">
      <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/dubrox/Multiple-Dates-Picker-for-jQuery-UI/master/jquery-ui.multidatespicker.css">
	<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_1-2ece18b6c26275ab3bce2543416a6d5ce8ab1fb02e628874719778440a82ecb2.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application_template_2-a79762e95ce2ee3797f3c699b7bae7897749e06c8ca7717bf815c52af7e70d4e.css" />
<link rel="stylesheet" media="all" href="https://d2yoing0loi5gh.cloudfront.net/assets/partner/application-7951be54de562fdfddb2d15cb298a0a5f2474e9b5e8ed9be904d5e55d0384e1c.css" />
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
#gname{
 width : 400px;
 height : 300px;
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
			img.style.width = '100px'; 
			img.style.height = '100px';
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
<body>
<h1>상품등록</h1>
<form action="insertgoods.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="gu_seq" value="${ldto1.gu_seq}" />
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
<p>*여행제목<input class="goods" type="text" name="g_name"/></p>
<P>
• 여행 주제를 정확하고 간결하게 표현해주세요.<br/>
• 맞춤법이 맞지 않거나 이모티콘 혹은 특수문자를 사용하실 경우 상품 검수 절차로 인해 판매가 늦어질 수 있습니다.<br/>
• 지역명이 포함된 제목은 상품 노출에 더 효과적입니다. (경복궁, 산책하는 여행 / 샌프란시스코! 경복궁 당일치기 등)<br/>
</P>
<p>*한줄요약<input class="goods" type="text" name="g_oneline"  /></p>
<P>
• 제목과 연결되는 매력 포인트를 작성해 주세요.<br/>
• 페이지에서 강조되어 나타납니다.<br/>
</P>

<p>*여행소개</p>
<p><textarea id="gname" type="text" name="g_conts" placeholder="

[투어코스- 구체적 코스와 각각의 소요시간 작성]
 ex)
서촌 골목을 소개합니다 (2시간 소요)
구체적 코스 작성
경복궁을 마지막으로 둘러봅시다 (1시간 반 소요)
구체적 코스 작성
" ></textarea></p>
<p>*여행 대표 사진  <input type="file" name="file" id="profile_pt" onchange="previewImage(this,'View_area')">
<div id='View_area' style='position:relative; width: 100px; height: 100px; color: black; border: 0px solid black; dispaly: inline; '>
<%=request.getRealPath("/")%></div></p>
<p>1인당 가격 <input type="text" name="g_price" placeholder="ex)20000" /></p>
<p>예약 인원수 <select name="g_people">
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
<p>투어코스  <input type="text" name="g_cos" placeholder="투어코스" /></p>
<p>투어소개  <input type="text" name="g_intro" placeholder="투어소개" /></p>
<p>코스이름  <input type="text" name="g_cname" placeholder="코스이름" /></p>
<p>코스내용  <input type="text" name="g_cconts" placeholder="코스내용" /></p>
<p>소요시간 <select name="g_time">
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
	</select></p>
	
	
	<hr class='divider'>
	<div class='form-group clearfix' data-desc='• 넓은 범위의 장소를 설정하면 만남에 많은 시간이 소요됩니다.<br/>• 나쁜 예) 그린파크역, 시청역<br/>• 좋은 예) 그린파크역 1번 출구 앞 벤치, 시청역 2번 출구 오른쪽 스타벅스 입구 앞<br/>'>
	<label class='control-label col-xs-12 margin-bottom-15 font-weight-600'>
	만나는 장소
	</label>
	<div class='col-xs-12'>
	<div class='row'>
	<div class='form-group clearfix'>
	<label class='control-label col-xs-12' for='offerMeetingPoint'>
	만나는 장소 이름
	<span>*</span>
	</label>
	<div class='col-xs-12'>
	<input class='form-control' id='offerMeetingPoint' name='offer[meeting_point]' type='text'>
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
	만나는 장소 위치
	<span>*</span>
	</label>
	<div class='col-xs-12'>
	<div class='form-group' data-desc='• 여행자분들과 만날 장소는 처음 방문하는 여행자들도 쉽게 찾아갈 수 있는 곳으로 정해주세요.<br/>'>
	<div class='input-search'>
	<button id="submit" type="button" class='input-search-btn' value="Geocode">
	<i aria-hidden='true' class='icon wb-search'></i>
	</button>
	<input class='form-control' name="g_address" id='inputSearchMap' value="" placeholder='만나는 장소의 주소 혹은 랜드마크 검색' type='text'>
			</div>
		</div>
	</div>
	<div class='col-xs-12 form-group'>
	<div class='height-300' id='meetingPointMap'></div>
			</div>
		</div>
	</div>
</div>



<p>투어 날짜 </p>
 <div id="mdp-demo"></div>
<input type="text"  name="g_date" id="altField" >
<input type="submit" value="상품등록">
</form>
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
                        // 경도
                        console.log('경도(longitude) : ' + marker.position.lng());
                    } else {
                        alert('지오코드가 다음의 이유로 성공하지 못했습니다 : ' + status);
                    }
                });
            }
        }
    </script>
</body>
</html>