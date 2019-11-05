

package com.hk.kskp;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.GuideDto;
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
	public String goodsDetail(Locale locale, Model model, GoodsDto dto) {
		logger.info("상품 상세보기", locale);
		GoodsDto gdto = GoodsService.getGoods(dto.getG_seq());
		System.out.println(dto.getG_seq());
		System.out.println("디티오"+gdto);
		model.addAttribute("gdto",gdto);
		return "goodsdetail";
	}
	
	@RequestMapping(value = "/insertcart.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String insertCart(Locale locale, Model model, PayDto dto) {
		logger.info("상품 장바구니에 담기", locale);
		System.out.println(dto);
		model.addAttribute("dto",dto);
		return "cart";
	}
	
	@RequestMapping(value = "/insertpay.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String insertPay(Locale locale, Model model, PayDto dto) {
		logger.info("상품 결제 페이지로 이동", locale);
		System.out.println(dto);
		model.addAttribute("dto",dto);
		return "pay";
	}
	
	
}//end

