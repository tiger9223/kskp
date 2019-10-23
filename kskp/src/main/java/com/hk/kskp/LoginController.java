package com.hk.kskp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.hk.login.dtos.LoginDto;


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
		logger.info("가이드회원 회원가입", locale);
		boolean isS=LoginService.gInsertUser(dto);
		if(isS) {
			return "login";
		}else {
			System.out.println("실패");
			return "login";
		}
	}
	
	@RequestMapping(value = "/mlogin.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String getLogin(HttpServletRequest request, Locale locale, Model model, String rid, String rpassword) {
		logger.info("로그인", locale);
		HttpSession session = request.getSession();
		LoginDto ldto = LoginService.getLogin(rid,rpassword);
		if(ldto == null || ldto.getRid()==null){
			
			return "redirect:error.do?msg=아이디나 패스워드를 확인해";
		}else{
			if(ldto.getRenabled().equals("N")){
				return "redirect:error.do?msg=탈퇴한 회원입니다";
			}else{
				session.setAttribute("ldto", ldto); //세션삽입
				session.setMaxInactiveInterval(10*60);//10분간 요청이 없으면 세션을 삭제
				if(ldto.getRrole().toUpperCase().equals("ADMIN")){
					return"admin_main";
				}else if(ldto.getRrole().toUpperCase().equals("USER")){
					return"user_main";
				}else if(ldto.getRrole().toUpperCase().equals("MANAGER")){
					return"user_main";
				}
			}
		}
		return rpassword;
	}
	
	
	
}//end
