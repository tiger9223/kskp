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
import com.hk.kskp.service.IBoardService;


@Controller
public class boardController {
	
	private static final Logger logger = LoggerFactory.getLogger(boardController.class);
	
	//@Autowired:스프링 컨테이너가 xml에 선언된 객체의 타입으로 찾아서 넣어줌
	//@Qualifier("boardDao"):스프링 컨테이너가 xml에 선언된 객체 이름으로 찾아서 넣어준다.
	
	@Autowired
	private IBoardService boardService;
	
	//클라이언트에서 home.do라고 get방식으로 요청하면 home()메서드 실행
	//@RequestMapping @(어노테이션)
	

	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		//Model객체:requestScope와 같은 역할을 함
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping(value="/Nboardlist.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String Nboardlist(Model model) {
		List<NoticeDto>list = boardService.NgetAllList();
		model.addAttribute("list",list);
		return "Nboardlist";
	}
	
	@RequestMapping(value="/insertform.do",method = RequestMethod.GET)
	public String insertForm() {
		logger.info("글쓰기폼으로 이동");
		return "Ninsertboard";
	}
	
	@RequestMapping(value="Ninsertboard.do",method = {RequestMethod.POST,RequestMethod.GET})
	 public String NinsertBoard(Model model,NoticeDto dto) {
		
		logger.info("공지게시판 글 추가하기");
		boolean isS=boardService.NinsertBoard(dto);
		if(isS) {
			return "redirect:Nboardlist.do";
		}
			return "Ninsertboard";
	}
	
//	@RequestMapping(value="getNboard",method = {RequestMethod.POST,RequestMethod.GET})
//	 public String getNboard(Model model,NoticeDto dto) {
//		logger.info("공지게시글 상세보기");
//		NoticeDto dto=boardService.getBoard(nDto.getSeq());
//		model.addAttribute("dto",dto);
//		return "boarddetail";
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
		
	
	
	
	
	
	
	
}//class














