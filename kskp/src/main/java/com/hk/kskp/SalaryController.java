package com.hk.kskp;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.dtos.SalaryDto;
import com.hk.kskp.service.ICashService;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.service.ISalaryService;

@Controller
public class SalaryController {

	private static final Logger logger = LoggerFactory.getLogger(SalaryController.class);
	
	@Autowired
	private ISalaryService SalaryService;
	
	@Autowired
	private ICashService CashService;
	
	@Autowired
	private ILoginService LoginService;
	
	@RequestMapping(value="/appsalform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String appsalform(Model model,SalaryDto dto,int gu_seq , int sal)  {
		logger.info("가이드 송금신청 폼으로 이동 이동");
		model.addAttribute("sal",sal);
		return "sendsalary";
	}
	
	@RequestMapping(value="/appsal.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String appsal(Model model,SalaryDto dto,int gu_seq, String gcost)  {
		logger.info("가이드 송금하기");
		String s_gcost = gcost.replaceAll(",", "");
		System.out.println(s_gcost);
		dto.setS_gcost(Integer.parseInt(s_gcost));	
		boolean isS=SalaryService.appSal(dto);
		if(isS) {
			return "redirect:salary.do?gu_seq="+gu_seq;
		}else {
			return "redirect:appsalform.do";
		}
		
	}
	
	@RequestMapping(value="/guidesalary.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guideSalary(Model model)  {
		logger.info("가이드 정산 리스트보기 ");
		
		List<SalaryDto> list = SalaryService.adminsallist();
		model.addAttribute("list",list);
		model.addAttribute("listsize", list.size());
		return "guidesalarylist";
		
	}
	
   @RequestMapping(value="/checksalary.do", method = {RequestMethod.GET,RequestMethod.POST})
   public String checksalary(Model model,SalaryDto dto,int gu_seq)  {
      logger.info("가이드 송금내역 확인하기");
      List<SalaryDto> list= SalaryService.salList(gu_seq);
      model.addAttribute("list", list);
      model.addAttribute("listsize", list.size());
      
      return "checksalary";
      }

	
	@RequestMapping(value="/appguidesal.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String appGuideSal(Model model, SalaryDto dto, String acost,MembersDto mdto)  {
		logger.info("가이드 정산 하기 ");
		System.out.println(dto);
		boolean isS = SalaryService.okaysal(dto.getS_seq());
		int m_salary = dto.getS_cost()-dto.getS_gcost();
		
		if(isS) {
			LoginService.guideSal(dto);
			LoginService.adminSal(m_salary);
			
		}
	
		return "guidesalarylist";
		
	}
	
   @RequestMapping(value="/getgsalary.do", method = {RequestMethod.GET,RequestMethod.POST})
   public String getgsalary(Model model,SalaryDto dto,int gu_seq)  {
      logger.info("가이드 정산내역 확인하기");
      List<SalaryDto> list= SalaryService.getsallist(gu_seq);
      model.addAttribute("list", list);
      model.addAttribute("listsize", list.size());
      return "getgsalList";
      }
   
   
   @RequestMapping(value="/adminsal.do", method = {RequestMethod.GET,RequestMethod.POST})
   public String adminsal(Model model,SalaryDto dto)  {
      logger.info("관리자 수익금액 확인리스트");
      List<SalaryDto> list= SalaryService.adminsal();
      model.addAttribute("list", list);
      model.addAttribute("listsize", list.size());
      return "adminsal";
      }
   
   
   
   
}
