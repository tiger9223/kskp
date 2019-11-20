package com.hk.kskp;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.hk.kskp.daos.LoginDao;
import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.LetterDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.dtos.ReviewDto;
import com.hk.kskp.service.IGoodsService;
import com.hk.kskp.service.ILetterService;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.service.IReviewService;
import com.hk.kskp.service.LoginService;
import com.hk.kskp.utils.FindUtil;
import com.hk.kskp.utils.MailUtil;
import com.hk.kskp.utils.Paging;
import com.hk.kskp.utils.UploadFileUtil;




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
	
	@Autowired
	private IGoodsService GoodsService;
	
	@Autowired
	private IReviewService ReviewService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	

	@Resource(name="uploadPath")
	private String uploadPath1;
	

	// id 중복 체크 컨트롤러
		@RequestMapping(value = "/emailCheck.do", method = RequestMethod.GET)
		@ResponseBody
		public int idCheck(@RequestParam("email") String email) {
			int check = LoginService.gemailCheck(email);
			check = LoginService.memailCheck(email);
			return check;
		}

	@Autowired
	private ILetterService LetterService;

	
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
	
	@RequestMapping(value = "/gemailcerform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String gemailcerform(HttpSession session, GuideDto dto,Model model, MultipartFile file) throws IOException, Exception {
		logger.info("이메일,핸드폰 인증 폼으로 이동");
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtil.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		System.out.println(uploadPath);
		dto.setGu_img("resources"+ File.separator +"imgUpload" + ymdPath + File.separator + fileName);
		System.out.println(dto);
		session.setAttribute("dto", dto);
		
		return "gemailcert";
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

	@RequestMapping(value = "/ginsertuser.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String ginsertuser(HttpSession session,Locale locale,Model model, String email, String ecer) throws Exception {
		logger.info("가이드 회원가입", locale);
		String a = (String)session.getAttribute("keyCode");
		GuideDto dto=(GuideDto)session.getAttribute("dto");
		if(ecer.equals(a)) {
			session.removeAttribute("keyCode");
			System.out.println(dto);
			boolean isS=LoginService.gInsertUser(dto);
			if(isS) {
			session.removeAttribute("dto");
			}
			return "login";
			
		}else {
			model.addAttribute("email", email);
			return "gemailcert";
			}
	}
	@RequestMapping(value = "/gupdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String authChange(Model model,String imgname, String backname, GuideDto dto,MultipartFile file,MultipartFile file1, String gu_pw, String gu_pw1) throws IOException, Exception {
		logger.info("가이드 정보수정 ");
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtil.calcPath(imgUploadPath);
		String fileName = null;
		
		String imgUploadPath1 = uploadPath1 + File.separator + "imgUpload";
		String ymdPath1 = UploadFileUtil.calcPath(imgUploadPath1);
		String fileName1 = null;
		System.out.println("변경전"+gu_pw);
		System.out.println("변경후"+gu_pw1);
		String pw;
		if(gu_pw == null) {
			pw = gu_pw1;
		}else {
			pw = gu_pw;
		}
		System.out.println(pw);
		
		
		System.out.println("file"+ file);
		System.out.println("file1"+file1);
		if(!file.isEmpty()) {
			 fileName =  UploadFileUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
				dto.setGu_img("resources"+ File.separator +"imgUpload" + ymdPath + File.separator + fileName);
			} else {
				if(imgname.equals("a")) {
					 fileName = "a";
					 dto.setGu_img(fileName);
				}else {
					 fileName = imgname;
					 dto.setGu_img(fileName);
				}
			
			}

		if(!file1.isEmpty()) {
			 fileName1 =  UploadFileUtil.fileUpload(imgUploadPath1, file1.getOriginalFilename(), file1.getBytes(), ymdPath1); 
			 dto.setGu_backimg("resources"+ File.separator +"imgUpload" + ymdPath1 + File.separator + fileName1);
			} else {
				if(backname.equals("a")) {
					 fileName1 = "a";
					 dto.setGu_backimg(fileName1);
				}else {
					fileName1 = backname;
					dto.setGu_backimg(fileName1);
				}			
			
			}
		
		
		dto.setGu_pw(pw);
		System.out.println(dto);
		boolean isS = LoginService.guserUpdate(dto);
		System.out.println("dto : "+dto);

		System.out.println(isS);
		if(isS){
			return"redirect:guserinfo.do?seq="+dto.getGu_seq();
		}else {
			return"error";
		}
	}
	
	@RequestMapping(value = "/mupdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String authChange(Model model,String imgname, MembersDto dto,String m_pw, String m_pw1,MultipartFile file) throws IOException, Exception {
		logger.info("일반회원 정보수정 ");
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtil.calcPath(imgUploadPath);
		String fileName = null;
		
		String pw;
		if(m_pw == null) {
			pw = m_pw1;
		}else {
			pw = m_pw;
		}
		System.out.println(pw);
		if(!file.isEmpty()) {
			 fileName =  UploadFileUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
				dto.setM_img("resources"+ File.separator +"imgUpload" + ymdPath + File.separator + fileName);
			} else {
				if(imgname.equals("a")) {
					 fileName = "a";
					 dto.setM_img(fileName);
				}else {
					fileName= imgname;
					dto.setM_img(fileName);
				}

			}
		dto.setM_pw(pw);
		System.out.println(dto);
		boolean isS = LoginService.userUpdate(dto);
		if(isS){
			return"redirect:muserinfo.do?seq="+dto.getM_seq();
		}else {
			return"error";
		}
	}
	
	
	@RequestMapping(value = "/idChk.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String idChk(Locale locale, Model model, String m_email) {
		logger.info("아이디중복체크", locale);
		MembersDto dto = LoginService.idChk(m_email);
		GuideDto dto1 = LoginService.idChk1(m_email);
		model.addAttribute("dto", dto);
		model.addAttribute("dto1", dto1);
		return "idchkform";
	}
	
	@RequestMapping(value = "/idChk1.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String idChk1(Locale locale, Model model, String gu_email) {
		logger.info("아이디중복체크", locale);
		MembersDto dto = LoginService.idChk(gu_email);
		GuideDto dto1 = LoginService.idChk1(gu_email);
		model.addAttribute("dto", dto);
		model.addAttribute("dto1", dto1);
		return "idchkform1";
	}
	
	
	@RequestMapping(value = "/ginsertuserform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String gInsertUserForm() {
		logger.info("가이드회원가입 폼으로 이동");
		return "gSignup";
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
	public String getLogin(HttpServletRequest request,HttpServletResponse response,Locale locale, Model model, String email, String pw) throws IOException {
		logger.info("로그인", locale);
	
		HttpSession session = request.getSession();
		
		MembersDto ldto = LoginService.mLogin(email,pw);
		GuideDto ldto1 = LoginService.gLogin(email, pw);
		PrintWriter out = response.getWriter();
		
		List<GoodsDto> alist = GoodsService.getAllGoods();
		List<GoodsDto> blist = GoodsService.getBestGoods();
		List<ReviewDto> rlist = ReviewService.reviewphoto();
		List<ReviewDto> slist = new ArrayList<>();
		
		for(int i=0;i<rlist.size();i++) {
			ReviewDto dto = rlist.get(i);
			String img = dto.getR_img();
			
			if(img.contains(",")) {
				String[] array = img.split(",");
				for(int j=0;j<array.length;j++) {
					ReviewDto rdto = new ReviewDto();
					rdto.setG_seq(dto.getG_seq());
					rdto.setR_img(array[j]);
					slist.add(rdto);
				}
			}else {
				ReviewDto rdto = new ReviewDto();
				rdto.setG_seq(dto.getG_seq());
				rdto.setR_img(img);
				slist.add(rdto);
			}
		}

		model.addAttribute("slist",slist);
		model.addAttribute("alist", alist);
		model.addAttribute("blist", blist);
		
		if(ldto == null && ldto1 ==null){
	            out.println("<script>alert('아이디 패스워드를 확인해주세요.'); history.go(-1);</script>");
	            out.flush();
			return "login";
		}else if(ldto !=null) {
			session.setAttribute("ldto", ldto);
			return "main";
		}else if(ldto1 !=null && ldto1.getGu_appflag()==1) {
			session.setAttribute("ldto1", ldto1);
			return "main";
		}else if(ldto1.getGu_appflag()==0) {
			 out.println("<script>alert('회원가입 승인 대기중입니다.'); history.go(-1);</script>");
			 out.flush();
			return "login";
		}
		return null;
	}
	
	@RequestMapping(value = "/logout.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(Locale locale, HttpSession session) {
		logger.info("로그아웃", locale);
		session.invalidate();
		return "redirect:loginform.do";
	}
	

	@RequestMapping(value = "/mypage.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String myPage(Model model,int seq ) {
		logger.info("마이페이지로 이동");
		MembersDto dto = LoginService.mUserInfo(seq);
		GuideDto gdto = LoginService.gUserInfo(seq);
		
		if(dto!=null) {
			int count = LetterService.lcount(dto.getM_email());
			int count1 = LetterService.scount(dto.getM_email());
			model.addAttribute("count", count);
			model.addAttribute("count1", count1);
			return"mypage";
		}else if(gdto!=null) {
			int count = LetterService.lcount(gdto.getGu_email());
			int count1 = LetterService.scount(gdto.getGu_email());
			model.addAttribute("count", count);
			model.addAttribute("count1", count1);
			return"mypage";
		}
		
		
		
		
		return"mypage";
	}
	
	
	@RequestMapping(value = "/muserinfo.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String userInfo(Model model, int seq) {
		logger.info("일반회원 정보보기");
		MembersDto dto1=LoginService.mUserInfo(seq);
		model.addAttribute("dto1",dto1);
		return"mUserinfo";
	}
	
	
	@RequestMapping(value = "/guserinfo.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guserInfo(Model model, int seq) {
		logger.info("가이드 정보보기");
		GuideDto dto2=LoginService.gUserInfo(seq);
		model.addAttribute("dto2",dto2);
		System.out.println(dto2);
		return"gUserInfo";
	}
	
	@RequestMapping(value = "/muserinfoform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String userInfoform(Model model) {
		logger.info("일반회원 정보수정 폼으로 이동");
		return"updateminfo";
	}
	
	@RequestMapping(value = "/starReview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String starReview(Model model) {
		logger.info("일반회원 정보수정 폼으로 이동");
		return"starRboard";
	}
	
	
	@RequestMapping(value = "/guserinfoform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guserInfoform(Model model) {
		logger.info("정보수정 폼으로 이동");
		return"updateUserInfo";
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
	
	@RequestMapping(value = "/gsendemail.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String gsendphone(Model model, String phone,HttpSession session, String email) throws Exception {
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
		return "gemailcert";
	}

	@RequestMapping(value = "/memberlist.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String memberlist(Model model) {
		logger.info("일반 회원 전체조회");
		List<MembersDto> mlist=LoginService.getMuserlist();
		model.addAttribute("mlist",mlist);
		model.addAttribute("listsize", mlist.size());
		return"memberlist";
	}
	
	
	@RequestMapping(value = "/guidelist.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guidelist(Model model) {
	
		logger.info("가이드 전체조회");		
		List<GuideDto> glist = LoginService.getGuserlist();
		model.addAttribute("glist",glist);	
		model.addAttribute("listsize", glist.size());
		return"guidelist";
	}
	
	
	
	
//	@RequestMapping(value = "/guidealllist.do", method = {RequestMethod.GET,RequestMethod.POST})
//	public String guideAllList(Model model, GuideDto dto) {
//		logger.info("//가이드 전체조회");
//		List<GuideDto> glist = LoginService.getGuserlist(dto);
//		model.addAttribute("glist",glist);
//		return"memberalllist";
//	}
	
	


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
	@RequestMapping(value = "/signupform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String signupForm(Model model) {
		logger.info("회원가입폼으로 이동");
		System.out.println("여기");
		return"signup";
	}
	@RequestMapping(value = "/signup.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String minsertuser(Model model){
		logger.info("회원가입");
		return apiResult;
		
	}
	@RequestMapping(value = "/conditions.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String conditionsForm(Model model) {
		logger.info("이용약관으로 이동");
		return"conditions";
	}
	@RequestMapping(value = "/privacy.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String privacyForm(Model model) {
		logger.info("개인정보처리방침");
		return"privacy";
	}
	
	@RequestMapping(value = "/responsibility.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String responsibilityForm(Model model) {
		logger.info("책임의 한계와 법적고지");
		return"responsibility";
	}
	
	@RequestMapping(value = "/serivecenter.do", method = {RequestMethod.GET,RequestMethod.POST})
	   public String serivecenterForm(Model model) {
	      logger.info("고객센터");
	      return"serivecenter";
	}
	  
	
	@RequestMapping(value = "/centeradd.do", method = {RequestMethod.GET,RequestMethod.POST})
	   public String centeraddform(Model model) {
	      logger.info("찾아오시는길");
	      return"centeradd";
	}
	   
	
	@RequestMapping(value = "/cancel.do", method = {RequestMethod.GET,RequestMethod.POST})
	   public String cancelForm(Model model) {
	      logger.info("환불정책");
	      return"cancel";
	}
	
	
	@RequestMapping(value = "/guideappform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guideappform(HttpServletRequest request,Model model,GuideDto dto,String pnum) {
		logger.info("가이드 승인 폼");
		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		
		List<GuideDto> list = LoginService.getGuserapplist(pnum);
		int p = Integer.parseInt(pnum);
		if(p > 1) {
			if(list.size() == 0) {
				list = LoginService.getGuserapplist(String.valueOf(p-1));
			}
		}
		model.addAttribute("list",list);
		model.addAttribute("listsize", list.size());
		int pcount=LoginService.getPcount(dto);
		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 10);
		model.addAttribute("map", map);
		return"guideapp";
	}
	
	@RequestMapping(value = "/guappdetail.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guappdetail(Model model,int gu_seq) {
		logger.info("가이드 상세보기");
		GuideDto dto = LoginService.gUserInfo(gu_seq);
		System.out.println(dto);
		model.addAttribute("dto",dto);
		return"guappdetail";
	}
	
	@RequestMapping(value = "/guideapp.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guideapp(Model model, GuideDto dto) throws IOException {
		logger.info("가이드 가입승인 ");
		boolean isS = LoginService.guideApp(dto);
		model.addAttribute("dto",dto);
		if(isS){

	         return"redirect:guideappform.do?pum=1";
		}else {
			return"guideappdetail.do?gu_Seq="+dto.getGu_seq();
		}
	}
	 

	@RequestMapping(value = "/noguideapp.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String noguideapp(Model model,int gu_seq) {
		logger.info("가이드거절이메일 폼");
		GuideDto dto=LoginService.gUserInfo(gu_seq);
		model.addAttribute("dto",dto);
		return"noguideapp";
	}
	
	
	
	@RequestMapping(value="delguide.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String delguide(HttpServletResponse response,Model model,GuideDto dto,String email,String conts) throws Exception {
		logger.info("가이드 거절하기");
		String subject = "swag가이드 가입거절 사유입니다.";
		String msg=conts; 
		msg += "";
		MailUtil.sendMail(email, subject, msg);
		model.addAttribute("email", email);

		boolean isS=LoginService.delGuide(dto);
		PrintWriter out = response.getWriter();
		if(isS){
	 		return"redirect:guideappform.do?&pnum=1";
		}else {
		
			return"guideappform.do?&pnum=1";
		}
	}
	
	
	
	
	
	
	
	
	




}//end
