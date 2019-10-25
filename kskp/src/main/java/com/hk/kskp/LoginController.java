package com.hk.kskp;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.service.LoginService;
import com.hk.kskp.utils.FindUtil;
import com.hk.kskp.utils.MailUtil;



@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
	this.naverLoginBO = naverLoginBO;
	}


	@Autowired
	private ILoginService LoginService;
	
	@RequestMapping(value = "/emailce11rform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String emailc11erform(HttpServletRequest request) {
		logger.info("이메일,핸드폰 인증 폼으로 이동");
		HttpSession session = request.getSession();
		session.removeAttribute("keyCode");
		session.removeAttribute("key");
		return "emailcert";
	}
	@RequestMapping(value = "/emailcerform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String emailcerform(HttpSession session, MembersDto dto,Model model) {
		logger.info("이메일,핸드폰 인증 폼으로 이동");
		session.setAttribute("dto", dto);
		return "emailcert";
	}
	@RequestMapping(value = "/minsertuserform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String minsertuserform(HttpServletRequest request) {
		logger.info("일반회원가입 폼으로 이동");
		return "mSignup";
	}
	@RequestMapping(value = "/sendphone.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String sendphone(HttpSession session,Model model, String phone) {
		logger.info("핸드폰 인증으로 이동");
		String key = ExampleSend.sendMessege(phone);
		session.setAttribute("key", key);
		model.addAttribute("phone", phone);
		return "emailcert";
	}
	
	@RequestMapping(value = "/minsertuser1.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String minsertuser1(HttpSession session,Locale locale,Model model, String phone, String pcer) throws IOException {
		logger.info("일반회원 회원가입", locale);
		String a = (String)session.getAttribute("key");
		MembersDto dto=(MembersDto)session.getAttribute("dto");
		dto.setM_phone(phone);
		if(pcer.equals(a)) {
			session.removeAttribute("key");
			boolean isS=LoginService.minsertUser1(dto);
			if(isS) {
			session.removeAttribute("dto");
			}
			return "login";
			
		}else {
			model.addAttribute("phone", phone);
			return "emailcert";
			}
	}
	@RequestMapping(value = "/minsertuser.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String minsertuser(HttpSession session,Locale locale,Model model, String email, String ecer) throws IOException {
		logger.info("일반회원 회원가입", locale);
		String a = (String)session.getAttribute("keyCode");
		MembersDto dto=(MembersDto)session.getAttribute("dto");
		if(ecer.equals(a)) {
			session.removeAttribute("keyCode");
			boolean isS=LoginService.mInsertUser(dto);
			if(isS) {
			session.removeAttribute("dto");
			}
			return "login";
			
		}else {
			model.addAttribute("email", email);
			return "emailcert";
			}
	
	}
	@RequestMapping(value = "/ginsertuserform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String gInsertUserForm() {
		logger.info("가이드회원가입 폼으로 이동");
		return "gSignup";
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
	public String loginform(Model model, HttpSession session) {
		logger.info("로그인 폼으로 이동");
		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);
		//네이버
		model.addAttribute("url", naverAuthUrl);
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
	public String logout(Locale locale, HttpSession session) {
		logger.info("로그아웃", locale);
		session.invalidate();
		return "redirect:loginform.do";
	}
	
	
	
	@RequestMapping(value = "/muserinfo.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String userInfo(Model model, int seq) {
		logger.info("일반회원 정보보기");
		MembersDto dto1=LoginService.mUserInfo(seq);
		model.addAttribute("dto1",dto1);
		return"mUserInfo";
	}
	
	@RequestMapping(value = "/guserinfo.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guserInfo(Model model, int seq) {
		logger.info("가이드 정보보기");
		GuideDto dto2=LoginService.gUserInfo(seq);
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
			return"redirect:muserinfo.do?seq="+dto.getM_seq();
		}else {
			return"error";
		}
	}
	
	@RequestMapping(value = "/gupdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String authChange(Model model, GuideDto dto) {
		logger.info("가이드 정보수정 ");
		boolean isS = LoginService.guserUpdate(dto);
		if(isS){
			return"redirect:guserinfo.do?seq="+dto.getGu_seq();
		}else {
			return"error";
		}
	}

	@RequestMapping(value = "/sendemail.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String sendphone(Model model, String phone,HttpSession session, String email) throws Exception {
		logger.info("이메일 인증번호 보내기");
		String keyCode = FindUtil.createKey();
		session.setAttribute("keyCode",keyCode);
	
		String subject = "SWAG 이메일 인증번호 입니다";
		String msg="";
		msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
		msg += "<h3 style='color: blue;'>이메일 인증코드입니다.</h3>";
		msg += "<div style='font-size: 130%'>";
		msg += keyCode + "</strong> 를 입력해주세요.</div><br/>";
		
		MailUtil.sendMail(email, subject, msg);
		model.addAttribute("email", email);
		return "emailcert";
	}

	
	


	//네이버 로그인 성공시 callback호출 메소드

	
	@RequestMapping(value = "/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws IOException, ParseException {
	System.out.println("여기는 callback");
	OAuth2AccessToken oauthToken;
	oauthToken = naverLoginBO.getAccessToken(session, code, state);
	//1. 로그인 사용자 정보를 읽어온다.
	apiResult = naverLoginBO.getUserProfile(oauthToken); //String형식의 json데이터
	/** apiResult json 구조
	{"resultcode":"00",
	"message":"success",
	"response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
	**/
	//2. String형식인 apiResult를 json형태로 바꿈
	JSONParser parser = new JSONParser();
	Object obj = parser.parse(apiResult);
	JSONObject jsonObj = (JSONObject) obj;
	//3. 데이터 파싱
	//Top레벨 단계 _response 파싱
	JSONObject response_obj = (JSONObject)jsonObj.get("response");
	//response의 nickname값 파싱
	String m_email = (String)response_obj.get("email");
	String m_name = (String)response_obj.get("name");
	String pw="1111";
	System.out.println(m_email);
	System.out.println(m_name);
	MembersDto ldto1 = LoginService.mLogin(m_email,pw);
	if(ldto1==null) {
		boolean isS = LoginService.naverUser(m_email, m_name);
		MembersDto ldto = LoginService.mLogin(m_email,pw);
		session.setAttribute("ldto", ldto);
		return "main";
	}else{
		MembersDto ldto = LoginService.mLogin(m_email,pw);
		session.setAttribute("ldto", ldto);
		return "main";
	}

	
	
	}

}//end
