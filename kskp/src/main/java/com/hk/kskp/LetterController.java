package com.hk.kskp;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.LetterDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.service.ILetterService;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.service.LetterService;
import com.hk.kskp.utils.Paging;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LetterController {

	private static final Logger logger = LoggerFactory.getLogger(LetterController.class);


	@Autowired
	private ILetterService LetterService;

	@Autowired
	private ILoginService LoginService;

	@RequestMapping(value="/sendLetterform.do",method = RequestMethod.GET)
	public String sendLetterform(Model model)  {
		logger.info("가이드 쪽지쓰기폼으로 이동");
//		model.addAttribute("msg", "쪽지쓰기");
		return "sendLetter";
	}

	@RequestMapping(value="/sendMLetterform.do",method = RequestMethod.GET)
	public String sendMLetterform(Model model)  {
		logger.info("일반회원 쪽지쓰기폼으로 이동");
//		model.addAttribute("msg", "쪽지쓰기");
		return "sendMletter";
	}
	
	
	

	@RequestMapping(value="sendletter.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String sendLetter(Model model,LetterDto dto,int seq )  {
		logger.info("쪽지쓰기");

		MembersDto dto1 = LoginService.mUserInfo(seq);
		GuideDto gdto = LoginService.gUserInfo(seq);
		
		List<MembersDto> mlist=LoginService.getMuserlist();
		List<GuideDto> glist = LoginService.getGuserlist();
		
		boolean isS = LetterService.sendLetter(dto);
		if(isS) {
			if(dto1!=null) {
				return "redirect:mletterlist.do?l_receiver="+dto1.getM_email()+"&pnum=1";
			}else if(gdto != null) {
				return "redirect:letterlist.do?l_receiver="+gdto.getGu_email()+"&pnum=1";
			}
			}else{
		model.addAttribute("msg", "쪽지보내기 실패ㅠㅠ");
		return "letterlist";
	}
		return "letterlist";
		}

	@RequestMapping(value="/letterlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String letterlist(HttpServletRequest request ,Model model,LetterDto dto, String pnum) {
		logger.info("가이드 받은쪽지보기");

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		List<LetterDto>list = LetterService.letterList(dto.getL_receiver(),pnum);

		int p = Integer.parseInt(pnum);

		if(p > 1) {
			if(list.size() == 0) {
				list = LetterService.letterList(dto.getL_receiver(),String.valueOf(p-1));
			}
		}

		model.addAttribute("list",list);
		int pcount=LetterService.getPcount(dto);
		int lcount=LetterService.lcount(dto.getL_receiver());
		model.addAttribute("listsize", lcount);
		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("map", map);
		return "letterlist";
	}

	@RequestMapping(value="/mletterlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String mletterlist(HttpServletRequest request ,Model model,LetterDto dto, String pnum) {
		logger.info("일반회원 받은쪽지보기");

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		List<LetterDto>list = LetterService.letterList(dto.getL_receiver(),pnum);

		int p = Integer.parseInt(pnum);

		if(p > 1) {
			if(list.size() == 0) {
				list = LetterService.letterList(dto.getL_receiver(),String.valueOf(p-1));
			}
		}

		model.addAttribute("list",list);
		int pcount=LetterService.getPcount(dto);
		int lcount=LetterService.lcount(dto.getL_receiver());
		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("map", map);
		model.addAttribute("listsize",lcount);
		return "mletterlist";
	}
	
	
	
	
	@RequestMapping(value="/sendletterlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String sendletterList(HttpServletRequest request ,Model model,LetterDto dto, String pnum) {
		logger.info("가이드 보낸쪽지보기");

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		List<LetterDto>list = LetterService.sendletterList(dto.getL_sender(), pnum);

		int p = Integer.parseInt(pnum);

		if(p > 1) {
			if(list.size() == 0) {
				list = LetterService.sendletterList(dto.getL_sender(),String.valueOf(p-1));
			}
		}

		model.addAttribute("list",list);
		int pcount=LetterService.getPcount1(dto);
		int scount=LetterService.scount(dto.getL_sender());
		model.addAttribute("listsize1", scount);
		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("map", map);
		return "sendLetterlist";

	}
	
	
	@RequestMapping(value="/sendmletterlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String sendmletterList(HttpServletRequest request ,Model model,LetterDto dto, String pnum) {
		logger.info("일반회원 보낸쪽지보기");

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		List<LetterDto>list = LetterService.sendletterList(dto.getL_sender(), pnum);

		int p = Integer.parseInt(pnum);

		if(p > 1) {
			if(list.size() == 0) {
				list = LetterService.sendletterList(dto.getL_sender(),String.valueOf(p-1));
			}
		}

		model.addAttribute("list",list);
		int pcount=LetterService.getPcount1(dto);
		int scount=LetterService.scount(dto.getL_sender());
		model.addAttribute("listsize1",scount);

		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("map", map);
		return "sendmletterlist";

	}
	
	
	@RequestMapping(value="/letterdetail.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String letterDetail(Model model,int l_seq) {
		logger.info("가이드 받은쪽지 상세보기");
		LetterDto dto=LetterService.letterDetail(l_seq);
		model.addAttribute("dto", dto);
		int lcount=LetterService.lcount(dto.getL_receiver());
		model.addAttribute("listsize", lcount);
		return "letterdetail"; 
	}

	
	@RequestMapping(value="/mletterdetail.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String mletterDetail(Model model,int l_seq) {
		logger.info("일반회원 받은쪽지 상세보기");
		LetterDto dto=LetterService.letterDetail(l_seq);
		model.addAttribute("dto", dto);
		int lcount=LetterService.lcount(dto.getL_receiver());
		model.addAttribute("listsize",lcount);
		return "mletterdetail"; 
	}

	
	
	@RequestMapping(value="/sendletterdetail.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String sendletterDetail(Model model,int l_seq) {
		logger.info("가이드 보낸쪽지 상세보기");
		LetterDto dto=LetterService.sendletterDetail(l_seq);
		model.addAttribute("dto", dto);
		int scount=LetterService.scount(dto.getL_sender());
		model.addAttribute("listsize1", scount);
		return "sendletterdetail"; 
	}

	@RequestMapping(value="/sendmletterdetail.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String sendmletterDetail(Model model,int l_seq) {
		logger.info("일반회원 보낸쪽지 상세보기");
		LetterDto dto=LetterService.sendletterDetail(l_seq);
		model.addAttribute("dto", dto);
		int scount=LetterService.scount(dto.getL_sender());
		model.addAttribute("listsize1",scount);
		
		return "sendmletterdetail"; 
	}

	
	
	@RequestMapping(value="/senddel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String senddelflag(HttpServletRequest request, HttpServletResponse response,Model model,LetterDto dto,String pnum) { 
		logger.info("가이드 보낸사람 글삭제하기");
		boolean isS=LetterService.senddelflag(dto.getL_seq());
		LetterService.delletter(dto);

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		if(isS) {
			return "redirect:sendletterlist.do?l_sender="+dto.getL_sender();
		}else {
			return "redirect:sendletterdetail.do?seq"+dto.getL_seq();
		}
	}

	@RequestMapping(value="/senddel1.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String senddelflag1(HttpServletRequest request, HttpServletResponse response,Model model,LetterDto dto,String pnum) { 
		logger.info("일반회원 보낸사람 글삭제하기");
		boolean isS=LetterService.senddelflag(dto.getL_seq());
		LetterService.delletter(dto);

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		if(isS) {
			return "redirect:sendmletterlist.do?l_sender="+dto.getL_sender();
		}else {
			return "redirect:sendmletterdetail.do?seq"+dto.getL_seq();
		}
	}
	
	
	
	
	@RequestMapping(value="/recdel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String recdelflag(HttpServletRequest request, HttpServletResponse response,Model model,LetterDto dto,String pnum) { 
		logger.info("가이드 받는 사람 글삭제하기");
		boolean isS=LetterService.recdelflag(dto.getL_seq());
		LetterService.delletter(dto);

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		if(isS) {
			return "redirect:letterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:letterdetail.do?seq"+dto.getL_seq();
		}
	}

	@RequestMapping(value="/recdel1.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String recdelflag1(HttpServletRequest request, HttpServletResponse response,Model model,LetterDto dto,String pnum) { 
		logger.info("일반 회원 받는 사람 글삭제하기");
		boolean isS=LetterService.recdelflag(dto.getL_seq());
		LetterService.delletter(dto);

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		if(isS) {
			return "redirect:mletterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:mletterdetail.do?seq"+dto.getL_seq();
		}
	}

	
	
	
	@RequestMapping(value="/sendmuldel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String sendmulDel(HttpServletRequest request, HttpServletResponse response,Model model,String[] chk,String pnum) { 
		logger.info("가이드 보낸쪽지 여러글삭제하기");
		String seq = chk[0];
		int l_seq = Integer.parseInt(seq);
		LetterDto dto=LetterService.sendletterDetail(l_seq);
		boolean isS=LetterService.sendmuldel(chk);
		LetterService.delletter(dto);

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		if(isS) {
			return "redirect:sendletterlist.do?l_sender="+dto.getL_sender();
		}else {
			return "redirect:sendletterlist.do";
		}
	}
	
	@RequestMapping(value="/sendmuldel1.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String sendmulDel1(HttpServletRequest request, HttpServletResponse response,Model model,String[] chk,String pnum) { 
		logger.info("일반회원 보낸쪽지 여러글삭제하기");
		String seq = chk[0];
		int l_seq = Integer.parseInt(seq);
		LetterDto dto=LetterService.sendletterDetail(l_seq);
		boolean isS=LetterService.sendmuldel(chk);
		LetterService.delletter(dto);

		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		

		if(isS) {
			return "redirect:sendmletterlist.do?l_sender="+dto.getL_sender();
		}else {
			return "redirect:sendmletterlist.do";
		}
	}

	@RequestMapping(value="/recmuldel.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String recmulDel(HttpServletRequest request, HttpServletResponse response,Model model,String[] chk,String pnum) { 
		logger.info("가이드 받는사람 여러글삭제하기");
		String seq = chk[0];
		int l_seq = Integer.parseInt(seq);
		LetterDto dto=LetterService.letterDetail(l_seq);
		boolean isS=LetterService.recmuldel(chk);
		LetterService.delletter(dto);
		if(isS) {
			if(pnum == null) {
				pnum = (String)request.getSession().getAttribute("pnum");
			}else {
				request.getSession().setAttribute("pnum", pnum);
			}
			return "redirect:letterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:letterlist.do";
		}
	}

	@RequestMapping(value="/recmuldel1.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String recmulDel1(HttpServletRequest request, HttpServletResponse response,Model model,String[] chk,String pnum) { 
		logger.info("일반회원 받는사람 여러글삭제하기");
		String seq = chk[0];
		int l_seq = Integer.parseInt(seq);
		LetterDto dto=LetterService.letterDetail(l_seq);
		boolean isS=LetterService.recmuldel(chk);
		LetterService.delletter(dto);
		if(isS) {
			if(pnum == null) {
				pnum = (String)request.getSession().getAttribute("pnum");
			}else {
				request.getSession().setAttribute("pnum", pnum);
			}
			return "redirect:mletterlist.do?l_receiver="+dto.getL_receiver();
		}else {
			return "redirect:mletterlist.do";
		}
	}


}
