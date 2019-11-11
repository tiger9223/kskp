package com.hk.kskp;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;
import com.hk.kskp.service.IBoardService;
import com.hk.kskp.utils.Paging;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	//@Autowired:스프링 컨테이너가 xml에 선언된 객체의 타입으로 찾아서 넣어줌
	//@Qualifier("boardDao"):스프링 컨테이너가 xml에 선언된 객체 이름으로 찾아서 넣어준다.
	
	@Autowired
	private IBoardService BoardService;
			
	@RequestMapping(value="/nboardlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String nboardlist(HttpServletRequest request, Model model, String pnum) {
		logger.info("공지사항으로 이동");
		HttpSession session = request.getSession();
		if(session == null) {
			return "redirect:loginform.do";
		}
		if(pnum == null) {
			pnum = (String) request.getSession().getAttribute("pnum");			
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}
		List<NoticeDto>list = BoardService.ngetAllList(pnum);
		model.addAttribute("list",list);
		
		int pcount=BoardService.getPcount();
		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("pmap", map);
		
		return "nboardlist";
	}	
		
	@RequestMapping(value="/ninsertform.do",method = RequestMethod.GET)
	public String insertForm() {
		logger.info("글쓰기폼으로 이동");
		return "ninsertboard";
	}
	
	@RequestMapping(value="ninsertboard.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String ninsertBoard(Model model,NoticeDto dto) {
		
		logger.info("공지게시판 글 추가하기");
		boolean isS = BoardService.ninsertBoard(dto);
		if(isS) {
			return "redirect:nboardlist.do";
		}
			return "ninsertboard";
	}
	
	@RequestMapping(value="ngetboard.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String ngetBoard(Model model,NoticeDto dto) {
		logger.info("공지게시글 상세보기");
		NoticeDto dto1 = BoardService.ngetBoard(dto.getN_seq());
		boolean isS =  BoardService.readCount(dto.getN_seq());
		if(isS) {
			model.addAttribute("dto1",dto1);
			return "nboarddetail";
		}else {
			return "nboarddetail";
		}

	}
	@RequestMapping(value="nupdateboardform.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String nupdateBoardFrom(Model model,int seq) {
		logger.info("공지게시글 수정하기폼으로 이동");
		NoticeDto dto = BoardService.ngetBoard(seq);
		System.out.println(dto);
		model.addAttribute("dto",dto);
		return "nupdateboard";						
	}
	
	@RequestMapping(value="nupdateboard.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String nupdateBoard(Model model,NoticeDto dto) {
		logger.info("공지게시글 수정하기");
		boolean isS = BoardService.nupdateBoard(dto);
		if(isS){
			return "redirect:nboardlist.do";			
		}else {
			return "redirect:nupdateboard.do";					
	   }
	}
	@RequestMapping(value="nmuldel.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String nmulDel(Model model,String[] chk) {
		logger.info("글 선택삭제하기");
		boolean isS = BoardService.nmuldel(chk);	
		if(isS) {
			return "redirect:nboardlist.do";
		}else {
			return "redirect:nboardlist.do";
	
		}
	}	
				
	// Q&A 게시판 
				
	@RequestMapping(value="/qboardlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String qboardList(HttpServletRequest request, Model model, String pnum) {
		logger.info("질문답변 목록보기");
		
		if(pnum==null) {
			pnum=(String)request.getSession().getAttribute("pnum");
		}else {			
			request.getSession().setAttribute("pnum", pnum);			
		}
		
		List<QaDto> list = BoardService.qgetAllList(pnum);
		model.addAttribute("list",list);
		
		int pcount=BoardService.qgetPcount();
		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("pmap", map);
		return "qboardlist";
	}
		
	@RequestMapping(value="/qinsertform.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qinsertForm() {
		logger.info("질문답변폼으로 이동");
		return "qinsertboard";
	}
	@RequestMapping(value="/qinsertboard.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qinsertBoard(Model model,QaDto dto) {		
		logger.info("질문답변 글 추가하기");
		System.out.println(dto);
		boolean isS = BoardService.qinsertBoard(dto);
		if(isS) {
			return "redirect:qboardlist.do";
		}
			return "qinsertboard";
	}
	
	@RequestMapping(value="/qboarddetail.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qboardDetail(Model model,QaDto dto) {		
		logger.info("게시글 상세보기");
		System.out.println(dto);
		QaDto qdto = BoardService.qgetBoard(dto.getQ_seq());
		model.addAttribute("qdto",qdto);
		System.out.println(qdto);
		return "qboarddetail";
	}
	
	
	@RequestMapping(value="/qboardupdateform.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qboardupdateForm(Model model, int seq) {
		logger.info("게시글 수정하기폼으로 이동");
		QaDto qdto=BoardService.qgetBoard(seq);
		model.addAttribute("qdto",qdto);
		return "qboardupdate";
	}
	
	@RequestMapping(value="qboardupdate.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qboardupDate(Model model,QaDto dto) {
		logger.info("게시글 수정하기");
		boolean isS=BoardService.qupdateBoard(dto);
		if(isS) {
			return "redirect:qboardlist.do";
		}else {
			return "redirect:qboarddetail.do?q_seq="+dto.getQ_seq();
		}
	}
	
	
	@RequestMapping(value="qdelboard.do",method= {RequestMethod.POST,RequestMethod.GET})
	public String qdelBoard(Model model, int seq) {
		logger.info("게시글 삭제하기");
		boolean isS=BoardService.qdelBoard(seq);
		if(isS) {
			return "redirect:qboardlist.do";
		}else {
			return "redirect:qboardlist.do?seq=seq";
		}
	}
	
	
	@RequestMapping(value="qansform.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qansForm(Model model,QaDto dto) {
		logger.info("답변폼으로 이동");
		QaDto qdto = BoardService.qgetBoard(dto.getQ_seq());
		model.addAttribute("qdto",qdto);
		return "qansboard";
	}
	
	@RequestMapping(value="qinsertans.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qinsertans(Model model,QaDto dto) {
		logger.info("답변 추가하기");
		System.out.println(dto);
		boolean isS = BoardService.qinsertAns(dto);
		if(isS) {
			return "redirect:qboardlist.do?q_seq="+dto.getQ_seq();
		}
			return "qinsertboard";
	}
	
//	@RequestMapping(value="unanswereform.do",method = {RequestMethod.POST,RequestMethod.GET})
//	public String unanswereForm(Model model,QaDto dto,String pnum) {
//		logger.info("답변폼으로 이동");
//		List<QaDto> list = BoardService.qgetAllList(pnum);
//		model.addAttribute("list",list);
//		return "unanswere";
//	}	
	
//	@RequestMapping(value="unanswered.do",method = {RequestMethod.POST,RequestMethod.GET})
//	public String unanswered(Model model,QaDto dto) {
//		logger.info("미답변 글 ");
//		boolean isS = BoardService.qboardList(dto);
//		if(isS) {
//			return "redirect:qboardlist.do?q_seq="+dto.getQ_seq();
//		}
//			return "qinsertboard";
//	}
//	
//	@RequestMapping(value="/qboardlist.do",method = {RequestMethod.POST,RequestMethod.GET})
//	 public String qboardList(HttpServletRequest request, Model model, String pnum) {
//		logger.info("질답 목록보기");
//		
//		if(pnum==null) {
//			pnum=(String)request.getSession().getAttribute("pnum");
//		}else {			
//			request.getSession().setAttribute("pnum", pnum);			
//		}
//		
//		List<QaDto> list = BoardService.qgetAllList(pnum);
//		model.addAttribute("list",list);
//		
//		int pcount=BoardService.qgetPcount();
//		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
//		model.addAttribute("pmap", map);
//		return "qboardlist";
//	}
	@RequestMapping(value="/unanswered.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String unansweredList(HttpServletRequest request, Model model, String pnum) {
		logger.info("미답변 목록보기");
		System.out.println("여기");
		if(pnum==null) {
			pnum=(String)request.getSession().getAttribute("pnum");
		}else {			
			request.getSession().setAttribute("pnum", pnum);			
		}
		
		List<QaDto> list = BoardService.unansweredList(pnum);
		model.addAttribute("list",list);
		
		int pcount=BoardService.qgetPcount();
		Map<String, Integer> map=Paging.pagingValue(pcount, pnum, 5);
		model.addAttribute("pmap", map);
		return "unansweredlist";
	}

			
	
	
}//class














