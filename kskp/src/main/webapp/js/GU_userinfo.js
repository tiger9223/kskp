	var acccheck;
	var bankcheck;
	var namecheck;
	var emailcheck;
	var phonecheck;
	var pwcheck;
	var pwchkcheck;
	var imgcheck;
	var introcheck;	
	
	function introcheckfun(){
    	var gu_intro = $("#gu_intro").val();
    	if(gu_intro == ""){
    		$('#intro_check').text('자기소개를 입력해주세요.');
			$('#intro_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			introcheck = false;
    	}else{
    		$("#intro_check").text("감사합니다");
			$("#intro_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			introcheck = true;
    	} 
    	 
	}
	
	function acccheckfun(){
	    var getAcc= /[^0-9]/g;
	  	var gu_acc = $("#gu_acc").val();
    	if(gu_acc == ""){
    		$('#acc_check').text('계좌번호를 입력해주세요 :)');
			$('#acc_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			acccheck= false;
    	}else if(getAcc.test(gu_acc)){
    		$("#acc_check").text(" -없이 정확히 입력해주세요 ");
			$("#acc_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
			acccheck= false;
    	}else{
    		$("#acc_check").text("감사합니다.");
			$("#acc_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			acccheck= true;
    	} 
    	 
	}
	function bankcheckfun(){
    	var gu_bank = $("#gu_bank").val();
    	if(gu_bank == ""){
    		$('#bank_check').text('은행명을 입력해주세요 :)');
			$('#bank_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			bankcheck = false;
    	}else{
    		$("#bank_check").text("감사합니다");
			$("#bank_check").css("color", "green");
			$("#reg_submit").attr("disabled", false);
			bankcheck = true;
    	} 
    	 
	}
	
	function phonecheckfun(){
	    var getPhone = /^\d{3}\d{3,4}\d{4}$/;
    	var gu_phone = $("#gu_phone").val();
    	if(gu_phone == ""){
    		$('#phone_check').text('핸드폰번호를 입력해주세요 :)');
			$('#phone_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			phonecheck = false;
    	}else if(!getPhone.test(gu_phone)){
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
    	var gu_pw = $("#gu_pw").val();
    	if(gu_pw == ""){
    		$('#pw_check').text('비밀번호를 입력해주세요 :)');
			$('#pw_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			pwcheck = false;
    	}else if(!getpwCheck.test(gu_pw)){
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
    	var gu_pw = $("#gu_pw").val();
    	var gu_pwchk = $("#gu_pwchk").val();
    	if(gu_pwchk == ""){
    		$('#pwchk_check').text('확인비밀번호를 입력해주세요 :)');
			$('#pwchk_check').css('color', 'red');		
			$("#reg_submit").attr("disabled", true);
			pwchkcheck = false;
    	}else if(gu_pw != gu_pwchk && gu_pwchk != ""){
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
	    $("#gu_acc").blur(function(){
	    	acccheckfun();	    			    	
		    });
	        
	    $("#gu_bank").blur(function(){
	    	bankcheckfun();	    		    	
	    });
	    	    
	    $("#gu_phone").blur(function(){
	    	phonecheckfun();    		    	
	    });
			

		
	    $("#gu_pw").blur(function(){
	    	pwcheckfun();
	    });
	    
	    $("#gu_pwchk").blur(function(){
	    	pwchkcheckfun();
	    	
	    });		
		

	   $("#gu_intro").blur(function(){
		   introcheckfun();

	});	
	  

	});