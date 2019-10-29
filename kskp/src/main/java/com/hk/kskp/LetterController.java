package com.hk.kskp;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	 public String letterlist(Model model,LetterDto dto) {
		logger.info("받은쪽지보기");
		System.out.println(dto);
		List<LetterDto>list = LetterService.letterList(dto.getL_receiver());
		model.addAttribute("list",list);
		return "letterlist";
	}
	
	@RequestMapping(value="/sendletterlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String sendletterList(HttpServletRequest request ,Model model,LetterDto dto, String pnum) {
		logger.info("보낸쪽지보기");
		
		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		
			
		List<LetterDto>list = LetterService.sendletterList(dto.getL_sender(), pnum);
		model.addAttribute("list",list);
		int pcount=LetterService.getPcount();
		
		Map<String, Integer> map=com.hk.kskp.utils.Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("pmap", map);
		return "sendLetterlist";
	
	}
	@RequestMapping(value="/letterdetail.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String letterDetail(Model model,int l_seq) {
		logger.info("받은쪽지 상세보기");
		LetterDto dto=LetterService.letterDetail(l_seq);
		model.addAttribute("dto", dto);
		return "letterdetail"; 
	}
	
	@RequestMapping(value="/sendletterdetail.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String sendletterDetail(Model model,int l_seq) {
		logger.info("보낸쪽지 상세보기");
		LetterDto dto=LetterService.sendletterDetail(l_seq);
		model.addAttribute("dto", dto);
		return "sendletterdetail"; 
	}
	
	
	@RequestMapping(value="/senddel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String senddelflag(Model model,LetterDto dto) { 
		logger.info("보낸사람 글삭제하기");
		boolean isS=LetterService.senddelflag(dto.getL_seq());
		LetterService.delletter(dto);
		if(isS) {
			return "redirect:sendletterlist.do?l_sender="+dto.getL_sender();
		}else {
			return "redirect:sendletterdetail.do?seq"+dto.getL_seq();
		}
	}
	
	@RequestMapping(value="/recdel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String recdelflag(Model model,LetterDto dto) { 
		logger.info("받는 사람 글삭제하기");
		boolean isS=LetterService.recdelflag(dto.getL_seq());
		LetterService.delletter(dto);
		if(isS) {
			return "redirect:letterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:letterdetail.do?seq"+dto.getL_seq();
		}
	}
	
	
	@RequestMapping(value="/sendmuldel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String sendmulDel(Model model,String[] chk) { 
		logger.info("보낸사람 여러글삭제하기");
		String seq = chk[0];
		int l_seq = Integer.parseInt(seq);
		LetterDto dto=LetterService.sendletterDetail(l_seq);
		boolean isS=LetterService.sendmuldel(chk);
		LetterService.delletter(dto);
		if(isS) {
			return "redirect:sendletterlist.do?l_sender="+dto.getL_sender();
		}else {
			return "redirect:sendletterlist.do";
		}
	}
	
	@RequestMapping(value="/recmuldel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String recmulDel(Model model,String[] chk) { 
		logger.info("받는사람 여러글삭제하기");
		String seq = chk[0];
		int l_seq = Integer.parseInt(seq);
		LetterDto dto=LetterService.letterDetail(l_seq);
		boolean isS=LetterService.recmuldel(chk);
		LetterService.delletter(dto);
		if(isS) {
			return "redirect:letterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:letterlist.do";
		}
	}


	
}
