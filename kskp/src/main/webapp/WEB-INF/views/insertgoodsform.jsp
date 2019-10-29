<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title></title>
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
<p>만나는 장소 <input type="text" name="g_meet" placeholder="만나는 장소"/></p>
<p>주소 <input type="text" name="g_address" placeholder="주소를 적어주세요"/></p>
<p>투어 날짜 <input type="text" name="g_date" placeholder="투어 날짜"/></p>
<input type="submit" value="상품등록">
</form>
</body>
</html>