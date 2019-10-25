package com.hk.kskp;

import java.text.DateFormat;
import java.util.Date;
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

	@Autowired
	private ILetterService LetterService;

	
	@RequestMapping(value="/sendLetterform.do",method = RequestMethod.GET)
	public String sendLetterform() {
		logger.info("쪽지쓰기폼으로 이동");
		return "sendLetter";
	}
	
	@RequestMapping(value="sendletter.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String sendLetter(Model model,LetterDto dto) {
		
		logger.info("공지게시판 글 추가하기");
		boolean isS = LetterService.sendLetter(dto);
		if(isS) {
			return "redirect:letterlist.do";
		}
			return "letterlist";
		}
	
	
	
	
	
	
}
