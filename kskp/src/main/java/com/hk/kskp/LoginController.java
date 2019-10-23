package com.hk.kskp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.service.LoginService;


@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	

	@Autowired
	private ILoginService LoginService;
	
	@RequestMapping(value = "/minsertuserform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String mInsertUserForm() {
		logger.info("일반회원가입 폼으로 이동");
		return "mSignup";
	}
	
	@RequestMapping(value = "/ginsertuserform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String gInsertUserForm() {
		logger.info("가이드회원가입 폼으로 이동");
		return "gSignup";
	}
	
	@RequestMapping(value = "/minsertuser.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String mInsertUser(Locale locale,MembersDto dto) {
		logger.info("일반회원 회원가입", locale);
		boolean isS=LoginService.mInsertUser(dto);
		if(isS) {
			return "login";
		}else {
			System.out.println("실패");
			return "login";
		}
	}
	
	@RequestMapping(value = "/ginsertuser.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String gInsertUser(Locale locale,GuideDto dto) {
		logger.info("일반회원 회원가입", locale);
		boolean isS=LoginService.gInsertUser(dto);
		if(isS) {
			return "login";
		}else {
			System.out.println("실패");
			return "login";
		}
	}
	
	
	
}//end
