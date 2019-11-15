package com.hk.kskp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.kskp.dtos.SalaryDto;
import com.hk.kskp.service.ISalaryService;

@Controller
public class SalaryController {

	private static final Logger logger = LoggerFactory.getLogger(SalaryController.class);
	
	@Autowired
	private ISalaryService SalaryService;
	
	@RequestMapping(value="/appsalform.do",method = RequestMethod.GET)
	public String appsalform(Model model,SalaryDto dto)  {
		logger.info("가이드 송금신청 폼으로 이동 이동");
		return "sendsalary";
	}
	

	
	
	
}
