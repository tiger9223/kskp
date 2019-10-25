package com.hk.kskp;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.kskp.dtos.LetterDto;
import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.service.ILetterService;
import com.hk.kskp.service.LetterService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LetterController {
	
	private static final Logger logger = LoggerFactory.getLogger(LetterController.class);
<<<<<<< HEAD
	
	
=======

	@Autowired
	private ILetterService LetterService;

>>>>>>> branch 'master' of https://github.com/tiger9223/kskp.git
	
	@RequestMapping(value="/sendLetterform.do",method = RequestMethod.GET)
	public String sendLetterform() {
		logger.info("쪽지쓰기폼으로 이동");
		return "sendLetter";
	}
	
	@RequestMapping(value="sendletter.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String sendLetter(Model model,String l_sender,String l_receiver,String l_title,String l_conts) {
		logger.info("쪽지쓰기");
		System.out.println(l_sender);
		boolean isS = LetterService.sendLetter(l_sender, l_receiver, l_title, l_conts);
		if(isS) {
			return "redirect:letterlist.do";
		}
			return "letterlist";
		}
	
	
	@RequestMapping(value="/letterlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String nboardlist(Model model) {
		logger.info("쪽지보기");
		List<LetterDto>list = LetterService.letterList();
		model.addAttribute("list",list);
		return "letterlist";
	}
	
	
	
	
}
