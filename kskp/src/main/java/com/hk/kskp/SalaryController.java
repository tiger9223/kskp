package com.hk.kskp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.kskp.dtos.SalaryDto;
import com.hk.kskp.service.ICashService;
import com.hk.kskp.service.ISalaryService;

@Controller
public class SalaryController {

	private static final Logger logger = LoggerFactory.getLogger(SalaryController.class);
	
	@Autowired
	private ISalaryService SalaryService;
	
	@Autowired
	private ICashService CashService;
	
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
	

		
	
	
}
