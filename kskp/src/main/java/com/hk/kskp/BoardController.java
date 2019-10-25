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


import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;
import com.hk.kskp.service.IBoardService;



@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	//@Autowired:스프링 컨테이너가 xml에 선언된 객체의 타입으로 찾아서 넣어줌
	//@Qualifier("boardDao"):스프링 컨테이너가 xml에 선언된 객체 이름으로 찾아서 넣어준다.
	
	@Autowired
	private IBoardService BoardService;
	
	//클라이언트에서 home.do라고 get방식으로 요청하면 home()메서드 실행
	//@RequestMapping @(어노테이션)

	
	
	@RequestMapping(value="/nboardlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String nboardlist(Model model) {
		List<NoticeDto>list = BoardService.ngetAllList();
		model.addAttribute("list",list);
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
	
//	@RequestMapping(value="Ngetboard",method = {RequestMethod.POST,RequestMethod.GET})
//	 public String getNboard(Model model,NoticeDto dto) {
//		logger.info("공지게시글 상세보기");
//		NoticeDto dto = BoardService.getBoard(nDto.getSeq());
//		model.addAttribute("dto",dto);
//		return "Nboarddetail";
//	}
//	@RequestMapping(value="/insertform.do",method = RequestMethod.GET)
//	public String insertForm() {
//		logger.info("글쓰기 폼으로 이동");
//		
//		return "insertNboard";
//	}
//	@RequestMapping(value="updateNboard",method = {RequestMethod.POST,RequestMethod.GET})
//	 public String updateNboard(Model model,NoticeDto dto) {
//		logger.info("공지글 수정하기");
//		boolean isS=boardService.updateNBoard()
	
	@RequestMapping(value="/qboardlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String qboardList(Model model) {
		logger.info("질답 목록보기");
		List<QaDto> list = BoardService.qgetAllList();
		System.out.println(list);
		model.addAttribute("list",list);
		
		return "qboardlist";
	}
		
	@RequestMapping(value="/qinsertform.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qinsertForm() {
		logger.info("질답폼으로 이동");
		return "qinsertboard";
	}
	@RequestMapping(value="/qinsertboard.do",method = {RequestMethod.POST,RequestMethod.GET})
	public String qinsertBoard(Model model,QaDto dto) {		
		logger.info("질답 글 추가하기");
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
			return "redirect:qboarddetail.do?QaDto dto";
		}else {
			return "redirect:qboardlist.do?QaDto dto";
		}
	}
			
	
	
}//class














