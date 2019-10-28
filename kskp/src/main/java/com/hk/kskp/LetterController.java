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
		logger.info("쪽지쓰기");
		boolean isS = LetterService.sendLetter(dto);
		if(isS) {
			return "main";
		}
			return "letterlist";
		}
	
	
	@RequestMapping(value="/letterlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String nboardlist(Model model,LetterDto dto) {
		logger.info("쪽지보기");
		System.out.println(dto);
		List<LetterDto>list = LetterService.letterList(dto.getL_receiver());
		model.addAttribute("list",list);
		return "letterlist";
	}
	
	@RequestMapping(value="/letterdetail.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String letterDetail(Model model,int l_seq) {
		logger.info("쪽지상세보기");
		LetterDto dto=LetterService.letterDetail(l_seq);
		model.addAttribute("dto", dto);
		return "letterdetail"; 
	}
	
	@RequestMapping(value="/delletter.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String delBoard(Model model,LetterDto dto) { 
		logger.info("글삭제하기");
		boolean isS=LetterService.delLetter(dto.getL_seq());
		if(isS) {
			return "redirect:letterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:boarddetail.do?seq"+dto.getL_seq();
		}
	}
	
	@RequestMapping(value="/muldel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String mulDel(Model model,String[] chk) { 
		logger.info("여러글삭제하기");
		String seq = chk[0];
		int l_seq = Integer.parseInt(seq);
		LetterDto dto=LetterService.letterDetail(l_seq);
		boolean isS=LetterService.muldel(chk);
		if(isS) {
			return "redirect:letterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:letterlist.do";
		}
	}
	
	
	
}
