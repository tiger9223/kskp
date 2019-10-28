

package com.hk.kskp;

import java.util.List;
import java.util.Locale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.service.IGoodsService;
import com.hk.kskp.service.ILoginService;

@Controller
public class GoodsController {
		
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private ILoginService LoginService;
	
	@Autowired
	private IGoodsService GoodsService;
	
	@RequestMapping(value = "/mypage.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String mInsertUserForm(Locale locale, Model model) {
		logger.info("마이페이지로 이동", locale);
		return "mypage";
	}
	
	@RequestMapping(value = "/gooodspage.do", method = {RequestMethod.GET,RequestMethod.POST})
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
	
}//end

