



$(function(){
	var g_name = $('#g_name').val();
	var g_price = $('#g_price').val();
	var g_info = $('#g_info').val();
	var lat= $('#lat').val();
	var lng= $('#lng').val();
	var profile_pt = $('#profile_pt').val();
	var g_conts= $('#g_conts').val();
	var g_oneline= $('#g_oneline').val();
	var g_address = $('#g_address').val();
	
	$("#g_name").blur(function(){
		if($('#g_name').val() =="" ){
    		$('#g_namechk').text('여행제목을 입력해주세요 :)');
			$('#g_namechk').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
		}else{
			$('#g_namechk').text('감사합니다');
			$('#g_namechk').css('color', 'green');	
			$("#reg_submit").attr("disabled", false);
		}   	
			
	    });
	$("#g_price").blur(function(){
		var getAcc= /[^0-9]/g;
		if($('#g_price').val() ==""){
    		$('#g_pricechk').text('가격을 설정해주세요');
			$('#g_pricechk').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
		}else if(getAcc.test($('#g_price').val())){
			$('#g_pricechk').text('숫자만 입력해주세요.');
			$('#g_pricechk').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
		}else{
			$('#g_pricechk').text('혜자');
			$('#g_pricechk').css('color', 'green');
			$("#reg_submit").attr("disabled", false);
		}   	
			
	    });
	$("#g_info").blur(function(){
		if($('#g_info').val() == ""){
    		$('#g_infochk').text('안내사항을 입력해주세요');
			$('#g_infochk').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
		}else{
			$('#g_infochk').text('감사합니다.');
			$('#g_infochk').css('color', 'green');	
			$("#reg_submit").attr("disabled", false);
		}   	
			
	    });


	$("#g_conts").blur(function(){
		if($('#g_conts').val() == null){
    		$('#g_contschk').text('여행 소개를 입력해주세요.');
			$('#g_contschk').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
		}else{
			$('#g_contschk').text('멋진 소개입니다.');
			$('#g_contschk').css('color', 'green');	
			$("#reg_submit").attr("disabled", false);
		}   	
			
	    });
	$("#g_oneline").blur(function(){
		if($('#g_oneline').val() ==""){
    		$('#g_onelinechk').text('한줄소개를 입려해주세요.');
			$('#g_onelinechk').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
		}else{
			$('#g_onelinechk').text('감사합니다.');
			$('#g_onelinechk').css('color', 'green');	
			$("#reg_submit").attr("disabled", false);
		}   	
			
	    });
	$("#g_address").blur(function(){
		if($('#g_address').val() ==""){
    		$('#g_addresschk').text('만나는 장소 이름을 입력해주세요.');
			$('#g_addresschk').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
		}else{
			$('#g_addresschk').text('참 좋은 장소입니다.');
			$('#g_addresschk').css('color', 'green');	
			$("#reg_submit").attr("disabled", false);
		}   	
			
	    });
//	$("#profile_pt").blur(function(){
//		if(profile_pt == null){
//    		$('#profile_ptchk').text('대표사진을 등록 해주세요.');
//			$('#profile_ptchk').css('color', 'red');		
//			$("#reg_submit").attr("disabled", true);
//		}else{
//			$('#profile_ptchk').text('멋진 사진이군요!');
//			$('#profile_ptchk').css('color', 'green');	
//			$("#reg_submit").attr("disabled", false);
//		}   	
//			
//	    });
	
	$("form").submit(function(){
		alert($("#altField").val());
		if($("#altField").val() == ""){
			alert("달력 날짜를 선택해주세요.")
			$("#mdp-demo").focus();
			return false;
		}else if($('#lat').val() == "0.0" && $('#lat').val() == "0.0"){
			alert("지도에 주소 입력후 검색해주세요")
			$("#inputSearchMap").focus();
			return false;
		}else if($('#profile_pt').val() == ""){
			alert("대표 사진을 등록해주세요")
			$("#profile_pt").focus();
			return false;
		}else if($("#g_name").val()=="" && $("#g_address").val()=="" &&$("#g_oneline").val()=="" && $("#g_conts").val()=="" && $("#g_info").val()=="" &&g_price=="" ){
			alert("입력안한 상품정보가 있습니다. 확인해주세요.")
			return false;
		}else{
			return true;
		}
		
		
	});
	
});