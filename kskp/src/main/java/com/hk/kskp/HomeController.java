package com.hk.kskp;



import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.ReviewDto;
import com.hk.kskp.service.IGoodsService;
import com.hk.kskp.service.IReviewService;
import com.hk.kskp.utils.Paging;
import com.hk.kskp.utils.SubString;
import com.hk.kskp.utils.UploadFileUtil;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private IGoodsService GoodsService;
	
	@Autowired
	private IReviewService ReviewService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value = "/main.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String main(HttpServletRequest request,Model model) {
		logger.info("메인페이지 이동");
		List<GoodsDto> alist = GoodsService.getAllGoods();
		List<GoodsDto> blist = GoodsService.getBestGoods();
		List<ReviewDto> rlist = ReviewService.reviewphoto();
		List<ReviewDto> slist = new ArrayList<>();
		
		for(int i=0;i<rlist.size();i++) {
			ReviewDto dto = rlist.get(i);
			String img = dto.getR_img();
			
			if(img.contains(",")) {
				String[] array = img.split(",");
				for(int j=0;j<array.length;j++) {
					ReviewDto rdto = new ReviewDto();
					rdto.setG_seq(dto.getG_seq());
					rdto.setR_img(array[j]);
					slist.add(rdto);
				}
			}else {
				ReviewDto rdto = new ReviewDto();
				rdto.setG_seq(dto.getG_seq());
				rdto.setR_img(img);
				slist.add(rdto);
			}
		}

		model.addAttribute("slist", slist);
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
		int gcount;
		if(cate == "" || cate == null) {
			list = GoodsService.getAllGoods1(pnum,kokey);
			gcount=GoodsService.gcount(kokey);
			
			if(p > 1) {
				if(list.size() == 0) {
					list = GoodsService.getAllGoods1(String.valueOf(p-1),kokey);
					gcount=GoodsService.gcount(kokey);
				}
			}
		
		}else {
			System.out.println("ㅇㅇ");
			list = GoodsService.searchcategory(cate,pnum,kokey);
			gcount=GoodsService.gccount(cate,kokey);
			System.out.println("1gcount = "+gcount);
			if(p > 1) {
				if(list.size() == 0) {
					list = GoodsService.searchcategory(cate,String.valueOf(p-1),kokey);
					gcount=GoodsService.gccount(cate,kokey);
				}
			}
		}
		
	
		System.out.println("list = "+list);
		System.out.println("2gcount = "+gcount);
		model.addAttribute("list", list);
		
		model.addAttribute("enkey", enkey);
		model.addAttribute("kokey", kokey);
		model.addAttribute("cate", cate);
		Map<String, Integer> map=Paging.pagingValue(gcount, pnum, 5);
		model.addAttribute("map", map);
		return "areagoods";
	}	@RequestMapping(value = "/selectdate.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String selectdate(HttpServletRequest request,Locale locale, Model model, String enkey, String kokey, String pnum, String cate,String date) {
		logger.info("날짜  선택");
		System.out.println("날짜"+ date);
		if(pnum == null) {
			pnum = (String)request.getSession().getAttribute("pnum");
		}else {
			request.getSession().setAttribute("pnum", pnum);
		}		
		int p = Integer.parseInt(pnum);
		List<GoodsDto> list = new ArrayList<>();
		int gcount;
		if(cate == "" || cate == null) {
			list = GoodsService.getAllGoods2(pnum,kokey,date);
			gcount=GoodsService.gcount2(kokey,date);
		if(p > 1) {
			if(list.size() == 0) {
				list = GoodsService.getAllGoods2(String.valueOf(p-1),kokey,date);
				gcount=GoodsService.gcount2(kokey,date);
			}
		}
		}else {
			list = GoodsService.searchcategory2(cate,pnum,kokey,date);
			gcount=GoodsService.gccount2(cate,kokey,date);
		if(p > 1) {
			if(list.size() == 0) {
				list = GoodsService.searchcategory2(cate,String.valueOf(p-1),kokey,date);
				gcount=GoodsService.gccount2(cate,kokey,date);
			}
		}
		}
		String subdate = SubString.sub(date);
		System.out.println(list);
		System.out.println(list);
		model.addAttribute("subdate", subdate);
		model.addAttribute("list", list);
		model.addAttribute("enkey", enkey);
		model.addAttribute("kokey", kokey);
		model.addAttribute("cate", cate);
		Map<String, Integer> map=Paging.pagingValue(gcount, pnum, 5);
		model.addAttribute("map", map);
		return "areagoods";
	}
	

	@RequestMapping(value = "/profileupload.do", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public String profileupload(@RequestParam HashMap<Object, Object> param, MultipartFile file) throws IOException, Exception {
		logger.info("프로필사진 선택");
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtil.calcPath(imgUploadPath);
		String fileName = null;
	
		if(file != null) {
			 fileName =  UploadFileUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
			} else {
			 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
			}
		String profile= ("resources"+ File.separator +"imgUpload" + ymdPath + File.separator + fileName);
		System.out.println(profile);
		return profile;
	}
	@RequestMapping(value = "/datepick.do", method = {RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public String datepick(@RequestParam("date") String date) {
		System.out.println("date="+date);
		String subdate = SubString.sub(date);
		System.out.println("subdate="+subdate);
		return subdate;
	}
}
