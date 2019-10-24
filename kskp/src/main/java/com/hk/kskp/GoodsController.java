

package com.hk.kskp;

import java.util.Locale;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
	public String mInsertUserForm(Locale locale, int gu_seq, Model model) {
		logger.info("마이페이지로 이동", locale);
		//GuideDto dto = LoginService.gUserInfo(gu_seq);
		//model.addAttribute("dto", dto);
		return "mypage";
	}
	

}//end

