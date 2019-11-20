	var acccheck;
	var bankcheck;
	var namecheck;
	var emailcheck;
	var phonecheck;
	var pwcheck;
	var pwchkcheck;
	var imgcheck;
	var introcheck;	

	


	function phonecheckfun(){
	    var getPhone = /^\d{3}\d{3,4}\d{4}$/;
    	var m_phone = $("#m_phone").val();
    	if(m_phone == ""){
    		$('#phone_check').text('핸드폰번호를 입력해주세요 :)');
			$('#phone_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			phonecheck = false;
    	}else if(!getPhone.test(m_phone)){
    		$("#phone_check").text(" -없이 010xxx(x)yyyy방식으로 입력해주세요 ");
			$("#phone_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
			phonecheck = false;
    	}else{
    		$("#phone_check").text("정상적인 번호입니다");
			$("#phone_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			phonecheck = true;
    	} 
    	 
	}

	
	function pwcheckfun(){
		var getpwCheck= RegExp(/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/);
    	var m_pw = $("#m_pw").val();
    	if(m_pw == ""){
    		$('#pw_check').text('비밀번호를 입력해주세요 :)');
			$('#pw_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			pwcheck = false;
    	}else if(!getpwCheck.test(m_pw)){
    		$("#pw_check").text("비밀번호를 문자+숫자+특수문자 포함 8~16자 이내로 입력해주세요. ");
			$("#pw_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
			pwcheck = false;
    	}else{
    		$("#pw_check").text("안전합니다! ");
			$("#pw_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			pwcheck = true;
    	} 
    	
    	
	}
	
	function pwchkcheckfun(){
    	var m_pw = $("#m_pw").val();
    	var m_pwchk = $("#m_pwchk").val();
    	if(m_pwchk == ""){
    		$('#pwchk_check').text('확인비밀번호를 입력해주세요 :)');
			$('#pwchk_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			pwchkcheck = false;
    	}else if(m_pw != m_pwchk && m_pwchk != ""){
    		$("#pwchk_check").text("비밀번호가 일치하지 않습니다. ");
			$("#pwchk_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
			pwchkcheck = false;
    	}else{
    		$("#pwchk_check").text("일치합니다!");
			$("#pwchk_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			pwchkcheck = true;
    	} 
	}
	


	
	$(function(){	    	        

	    $("#m_phone").blur(function(){
	    	phonecheckfun();    		    	
	    });
			

		
	    $("#m_pw").blur(function(){
	    	pwcheckfun();
	    });
	    
	    $("#m_pwchk").blur(function(){
	    	pwchkcheckfun();
	    	
	    });		
		

	  

	});