package com.hk.kskp;



import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/main.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String main(HttpServletRequest request) {
		logger.info("메인페이지 이동");
		return "main";
	}
	@RequestMapping(value = "/selectsignup.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String selectsignup(HttpServletRequest request) {
		logger.info("회원가입 선택");
		return "selectsignup";
	}
	@RequestMapping(value = "/servicecenter.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String servicecenter(HttpServletRequest request) {
		logger.info("회원가입 선택");
		return "servicecenter";
	}
}
