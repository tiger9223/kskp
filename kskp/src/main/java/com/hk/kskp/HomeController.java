package com.hk.kskp;



import java.util.ArrayList;
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

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.service.IGoodsService;
import com.hk.kskp.utils.Paging;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private IGoodsService GoodsService;
	
	@RequestMapping(value = "/main.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String main(HttpServletRequest request,Model model) {
		logger.info("메인페이지 이동");
		List<GoodsDto> alist = GoodsService.getAllGoods();
		List<GoodsDto> blist = GoodsService.getBestGoods();
		model.addAttribute("alist", alist);
		model.addAttribute("blist", blist);
		return "main";
	}
	@RequestMapping(value = "/selectsignup.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String selectsignup(HttpServletRequest request) {
		logger.info("회원가입 선택");
		return "selectsignup";
	}
	@RequestMapping(value = "/servicecenter.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String servicecenter(HttpServletRequest request) {
		logger.info("회원가입 선택");
		return "servicecenter";
	}
	@RequestMapping(value = "/selectarea.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String selectarea(HttpServletRequest request,Locale locale, Model model, String enkey, String kokey, String pnum, String cate) {
		logger.info(kokey+"선택");
		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		
		int p = Integer.parseInt(pnum);
		List<GoodsDto> list = new ArrayList<>();
		
		if(cate == null) {
			list = GoodsService.getallgoods1(pnum);
		if(p > 1) {
			if(list.size() == 0) {
				list = GoodsService.getallgoods1(String.valueOf(p-1));
			}
		}
		}else {
			list = GoodsService.searchcategory(cate,pnum);
		if(p > 1) {
			if(list.size() == 0) {
				list = GoodsService.getallgoods1(String.valueOf(p-1));
			}
		}
		}
		
	
		System.out.println(list);
		model.addAttribute("list", list);
		int gcount=GoodsService.gcount();
		model.addAttribute("enkey", enkey);
		model.addAttribute("kokey", kokey);
		model.addAttribute("cate", cate);
		Map<String, Integer> map=Paging.pagingValue(gcount, pnum, 5);
		model.addAttribute("map", map);
		return "areagoods";
	}
	@RequestMapping(value = "/searchcategory.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String searchcategory(HttpServletRequest request, Locale locale, Model model,String pnum, String cate, String enkey, String kokey) {
		logger.info(cate+"선택");
		
		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}	
		
		
		List<GoodsDto> list = GoodsService.searchcategory(cate,pnum);
		
		int p = Integer.parseInt(pnum);
		
		if(p > 1) {
			if(list.size() == 0) {
				list = GoodsService.searchcategory(cate,String.valueOf(p-1));
			}
		}
		model.addAttribute("list", list);
		int gccount = GoodsService.gccount(cate);
		
		
		model.addAttribute("enkey", enkey);
		model.addAttribute("kokey", kokey);
		Map<String, Integer> map=Paging.pagingValue(gccount, pnum, 5);
		model.addAttribute("map", map);
		return "areagoods";
	}
	
}
