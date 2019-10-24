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
	
	@RequestMapping(value = "/loginform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String loginform() {
		logger.info("로그인 폼으로 이동");
		return "login";
	}
	
	@RequestMapping(value = "/mlogin.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String getLogin(HttpServletRequest request,Locale locale, Model model, String email, String pw) {
		logger.info("로그인", locale);
	
		HttpSession session = request.getSession();
		
		MembersDto ldto = LoginService.mLogin(email,pw);
		GuideDto ldto1 = LoginService.gLogin(email, pw);
		
		System.out.println("ldto="+ldto);
		if(ldto == null && ldto1 ==null){
			return "login";
		}else if(ldto !=null) {
			session.setAttribute("ldto", ldto);
			return "main";
		}else if(ldto1 !=null) {
			session.setAttribute("ldto1", ldto1);
			return "main";
		}
		return null;
	}
	
	@RequestMapping(value = "/logout.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(HttpServletRequest request, Locale locale, Model model) {
		logger.info("로그아웃", locale);
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:loginform.do";
	}
	
	
	
	@RequestMapping(value = "/muserinfo.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String userInfo(Model model, MembersDto dto) {
		logger.info("일반회원 정보보기");
		MembersDto dto1=LoginService.mUserInfo(dto.getM_email());
		model.addAttribute("dto1",dto1);
		return"mUserInfo";
	}
	
	@RequestMapping(value = "/guserinfo.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guserInfo(Model model, GuideDto dto) {
		logger.info("가이드 정보보기");
		GuideDto dto2=LoginService.gUserInfo(dto.getGu_email());
		model.addAttribute("dto2",dto2);
		return"mUserInfo";
	}
	
	@RequestMapping(value = "/muserinfoform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String userInfoform(Model model) {
		logger.info("일반회원 정보수정 폼으로 이동");
		return"updateUserInfo";
	}
	
	
	@RequestMapping(value = "/guserinfoform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guserInfoform(Model model) {
		logger.info("정보수정 폼으로 이동");
		return"updateUserInfo";
	}
	
	
	@RequestMapping(value = "/mupdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String authChange(Model model, MembersDto dto) {
		logger.info("일반회원 정보수정 ");
		boolean isS = LoginService.userUpdate(dto);
		if(isS){
			return"redirect:muserinfo.do?m_email="+dto.getM_email();
		}else {
			return"error";
		}
	}
	
	@RequestMapping(value = "/gupdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String authChange(Model model, GuideDto dto) {
		logger.info("가이드 정보수정 ");
		boolean isS = LoginService.guserUpdate(dto);
		if(isS){
			return"redirect:guserinfo.do";
		}else {
			return"error";
		}
	}
}//end
