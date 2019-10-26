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
<p>*여행제목<input class="goods" type="text" name="g_name" placeholder="페이지의 상품 제목이 될 것입니다!" /></p>
<p>*한줄요약<input class="goods" type="text" name="g_name" placeholder="매력포인트 - 투어의 매력을 간단히 소개해주세요!" /></p>
<p>*여행소개<textarea class="goods" type="text" name="g_name" placeholder="한줄요약
*상품 작성 예시

[투어코스- 구체적 코스와 각각의 소요시간 작성]
 ex)
서촌 골목을 소개합니다 (2시간 소요)
구체적 코스 작성
경복궁을 마지막으로 둘러봅시다 (1시간 반 소요)
구체적 코스 작성
" ></textarea></p>
<p>*대표사진 : <input type="file" name="g_img1" id="profile_pt" onchange="previewImage(this,'View_area')">
<div id='View_area' style='position:relative; width: 100px; height: 100px; color: black; border: 0px solid black; dispaly: inline; '></div></p>
<p>비밀번호 확인 : <input type="text" name="gu_pw1" placeholder="pwck" /></p>
<p>은행 : <input type="text" name="gu_bank" placeholder="bank" /></p>
<p>계좌번호 : <input type="text" name="gu_acc" placeholder="account" /></p>
<p>신분증 <input type="button" name="gu_acc" value="첨부하기"></p>
<input type="submit" value="회원가입">
</form>
</body>
</html>