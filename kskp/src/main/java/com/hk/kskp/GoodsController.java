

package com.hk.kskp;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.service.ICashService;
import com.hk.kskp.service.IGoodsService;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.utils.UploadFileUtil;

@Controller
public class GoodsController {
		
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private ILoginService LoginService;
	
	@Autowired
	private IGoodsService GoodsService;
	
	@Autowired
	private ICashService CashService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/goodspage.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String gooodsManagement(Locale locale, Model model, GuideDto dto) {
		logger.info("상품관리로 이동", locale);
		List<GoodsDto> list = GoodsService.guideGoods(dto.getGu_seq());
		model.addAttribute("list", list);
		System.out.println(list);
		return "goodspage";
	}

	@RequestMapping(value = "/insertgoodsform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String insertGoodsForm(Locale locale) {
		logger.info("상품관리로 이동", locale);
		return "insertgoodsform";
	}
	
	@RequestMapping(value = "/goodsappform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String goodsAppForm(Locale locale, Model model) {
		logger.info("상품승인 페이지로 이동", locale);
		List<GoodsDto> list = GoodsService.appGoodsList();
		model.addAttribute("list", list);
		System.out.println(list);
		return "goodsapp";
	}
	
	@RequestMapping(value = "/goodsapp.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String goodsApp(Locale locale,HttpServletResponse response ,HttpServletRequest request,Model model, int g_seq) throws IOException {
		logger.info("상품승인", locale);
		PrintWriter out = response.getWriter();
		boolean isS = GoodsService.appGoods(g_seq);
		if(isS) {
			System.out.println("성공");
			return "redirect: goodsappform.do";
		}else {
		    return "redirect: goodsappform.do";
		}
		
	}
	
	@RequestMapping(value = "/goodsappno.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String goodsAppNo(Locale locale, Model model, int g_seq) {
		logger.info("상품승인취소", locale);
		boolean isS = GoodsService.appNoGoods(g_seq);
		if(isS) {
			System.out.println("성공");
			return "redirect: goodsappform.do";
		}else {
			System.out.println("실패");
		    return "redirect: goodsappform.do";
		}
		
	}
	
	@RequestMapping(value = "/insertgoods.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String insertGoods(Locale locale,Model model, GoodsDto dto, MultipartFile file) throws IOException, Exception {
		logger.info("상품등록", locale);
		System.out.println(dto);
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtil.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName =  UploadFileUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		System.out.println(uploadPath);
		dto.setG_img1("resources"+ File.separator +"imgUpload" + ymdPath + File.separator + fileName);
		dto.setG_thumbimg("resources"+ File.separator +"imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		System.out.println(dto);
		boolean isS = GoodsService.insertGoods(dto);
		if(isS) {
			return "redirect:goodspage.do?gu_seq="+dto.getGu_seq();
		}else {
		    return "insertgoodsform";
		}
		
	}
	
	@RequestMapping(value = "/goodsdetail.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String goodsDetail(Locale locale, Model model, int g_seq) {
		logger.info("상품 상세보기", locale);
		GoodsDto gdto = GoodsService.getGoods(g_seq);
		System.out.println(g_seq);
		System.out.println("디티오"+gdto);
		model.addAttribute("gdto",gdto);
		return "goodsdetail";
	}
	
	@RequestMapping(value = "/insertcart.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String insertCart(Locale locale, Model model, PayDto dto) {
		logger.info("상품 장바구니에 담기", locale);
		System.out.println(dto);
		boolean isS = CashService.cart(dto);
		if(isS) {
			return "redirect:cartlist.do?m_seq="+dto.getM_seq();
		}else {
			return "redirect:goodsdetail.do?g_seq="+dto.getG_seq();
		}
		
	}
	
	@RequestMapping(value = "/insertpay.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String insertPay(Locale locale, Model model, PayDto dto, HttpServletRequest request) {
		logger.info("결제완료", locale);
		HttpSession session = request.getSession();
		MembersDto ldto =  (MembersDto)session.getAttribute("ldto");
		System.out.println("dto: "+dto);
		System.out.println("dto.getG_seq(): "+dto.getG_seq());
		boolean isS = CashService.pay(dto);
		model.addAttribute("dto",dto);
		if(isS) {
			GoodsService.upPeople(dto.getG_seq());
			return "redirect:paylist.do?m_seq="+ldto.getM_seq();
		}else {
		    return "redirect:goodsdetail.do?g_seq="+dto.getG_seq();
		}
	}
	@RequestMapping(value = "/cartpay.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String cartPay(Locale locale, Model model, PayDto dto, HttpServletRequest request) {
		logger.info("장바구니 결제완료", locale);
		HttpSession session = request.getSession();
		MembersDto ldto =  (MembersDto)session.getAttribute("ldto");
		System.out.println("dto: "+dto);
		System.out.println("dto.getG_seq(): "+dto.getG_seq());
		boolean isS = CashService.cartPay(dto);
		model.addAttribute("dto",dto);
		if(isS) {
			GoodsService.upPeople(dto.getG_seq());
			return "redirect:paylist.do?m_seq="+ldto.getM_seq();
		}else {
		    return "redirect:goodsdetail.do?g_seq="+dto.getG_seq();
		}
	}
	
	

	@RequestMapping(value = "/paylist.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String payList(Locale locale, Model model, int m_seq) {
		logger.info("결제 내역보기", locale);
		List<PayDto> list = CashService.getAllPay(m_seq);
		System.out.println(m_seq);
		model.addAttribute("list",list);
		return "paylist";
	}
	
	@RequestMapping(value = "/cartlist.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String cartList(Locale locale, Model model, int m_seq) {
		logger.info("내 장바구니 보기", locale);
		List<PayDto> list = CashService.cartList(m_seq);
		System.out.println(list);
		model.addAttribute("list",list);
		return "cart";
	}
	
	@RequestMapping(value = "/salary.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String salary(Locale locale, Model model, int gu_seq) {
		logger.info("수익내역 보기", locale);
		List<PayDto> list = CashService.getPays(gu_seq);
		System.out.println(list);
		model.addAttribute("list",list);
		return "guidesalary";
	}

	
}//end

