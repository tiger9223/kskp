package com.hk.kskp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LetterController {
	
	private static final Logger logger = LoggerFactory.getLogger(LetterController.class);
	
	
	
	@RequestMapping(value="/sendLetterform.do",method = RequestMethod.GET)
	public String insertForm() {
		logger.info("쪽지쓰기폼으로 이동");
		return "sendLetter";
	}
	
}
