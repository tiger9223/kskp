

package com.hk.kskp;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
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
import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.ReviewDto;
import com.hk.kskp.service.ICashService;
import com.hk.kskp.service.IGoodsService;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.service.IReviewService;
import com.hk.kskp.utils.UploadFileUtil;

@Controller
public class ReviewController {
		
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private IReviewService ReviewService;
	
	@Autowired
	private ILoginService LoginService;
	
	@Autowired
	private IGoodsService GoodsService;
	
	@Autowired
	private ICashService CashService;
	@Resource(name="uploadPath")
	private String uploadPath;
	


	@RequestMapping(value = "/writereviewform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String wirtereviewform(Locale locale,Model model ,int p_seq) {
		logger.info("후기작성폼 이동", locale);
	    PayDto dto = CashService.review(p_seq);
	    System.out.println(dto);
		model.addAttribute("dto",dto);
		return "starRboard";
	}
	
	@ResponseBody
    @RequestMapping(value = "/imageUpload.do",method= {RequestMethod.POST})
    public String communityImageUpload(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam MultipartFile upload) throws Exception {
       System.out.println("후기 이미지");
       //한글깨짐을 방지하기위해 문자셋 설정
       response.setCharacterEncoding("utf-8");
     
            // 마찬가지로 파라미터로 전달되는 response 객체의 한글 설정
            response.setContentType("text/html; charset=utf-8");
     
            // 업로드한 파일 이름
            String fileName = upload.getOriginalFilename();
           
            String stored_fname = createUUId()
                   +(fileName.substring(fileName.lastIndexOf(".")));
            // 파일을 바이트 배열로 변환
            byte[] bytes = upload.getBytes();
            //저장되는 공간
            String uploadPath="C:\\Users\\git\\kskp\\kskp\\src\\main\\webapp\\resources\\ckimage\\";
                     
            OutputStream out = new FileOutputStream(new File(uploadPath + stored_fname));
            
            // 서버로 업로드
            // write메소드의 매개값으로 파일의 총 바이트를 매개값으로 준다.
            // 지정된 바이트를 출력 스트립에 쓴다 (출력하기 위해서)
            out.write(bytes);
                       
            // 서버=>클라이언트로 텍스트 전송(자바스크립트 실행)
            PrintWriter printWriter = response.getWriter();
            
            String fileUrl = "/kskp/resources/ckimage/" + stored_fname;
            
          
        	model.addAttribute("fileUrl",fileUrl);
            System.out.println(fileUrl);
            printWriter.println("{\"fileName\" : \""+stored_fname+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");     
            printWriter.flush();
            out.close();
            printWriter.close(); 
            return null;
        }
	
	
	@RequestMapping(value = "/writereview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String wirtereview(Locale locale,Model model ,ReviewDto dto, PayDto dto2, int p_seq, HttpServletRequest request,MultipartFile file) throws IOException, Exception {
		logger.info("후기작성", locale);
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtil.calcPath(imgUploadPath);
		String fileName = null;
		System.out.println(file);
		if(!file.isEmpty()) {
			 fileName =  UploadFileUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
			} else {
			 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
			}

		dto.setR_img("resources"+ File.separator +"imgUpload" + ymdPath + File.separator + fileName);
		HttpSession session = request.getSession();
		MembersDto ldto =  (MembersDto)session.getAttribute("ldto");
		PayDto dto1 = CashService.review(p_seq);
		boolean isS = ReviewService.writeReview(dto);
		if(isS) {
			CashService.updatereivew(p_seq);
			return "redirect:paylist.do?m_seq="+dto.getM_seq();
		}
		else {
			return "redirect:writereview.do?p_seq="+dto1.getP_seq();
		}
	}
	

	@RequestMapping(value = "/guidenoreview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guidenoreview(Locale locale,Model model,int gu_seq ) {
	    List<ReviewDto> list = ReviewService.guidenoreview(gu_seq);
	    model.addAttribute("list",list);
	    model.addAttribute("listsize", list.size());
		return "guidenoreview";
	}
	

	@RequestMapping(value = "/guideyesreview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String guideYesReview(Locale locale,Model model,int gu_seq ) {
		logger.info("가이드가 단 답글 보기 이동", locale);
	    List<ReviewDto> list = ReviewService.guideYesReview(gu_seq);
	    model.addAttribute("list",list);
	    model.addAttribute("listsize",list.size());
		return "guideyesreview";
	}
	
	@RequestMapping(value = "/getreviewform.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String getrivewform(Locale locale,Model model ,int r_seq ) {
		logger.info("가이드 답글 달기 폼으 로 이동", locale);
	    ReviewDto dto = ReviewService.getreview(r_seq);
		model.addAttribute("dto",dto);
		return "insertguidereview";
	}
	
	@RequestMapping(value = "/insertgreview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String getrivew(Locale locale,Model model,ReviewDto dto,int gu_seq) {
		logger.info("가이드 답글 로 이동", locale);
		System.out.println(dto);
	    boolean isS=ReviewService.insertgreview(dto);
	    if(isS) {
	    	return "redirect:guidenoreview.do?gu_seq="+gu_seq;
	    }else {
	    	return "insertguidereview";
	    }
	}
	
	@RequestMapping(value = "/useryesreview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String userReviewList(Locale locale, Model model, int m_seq) {
		logger.info("회원이 작성한 후기 리스트 보기", locale);
	    List<ReviewDto> list = ReviewService.userReview(m_seq);
	    System.out.println(list);
	    model.addAttribute("list",list);
	    model.addAttribute("userrecount", list.size());
		return "useryesreview";
	}
	
	@RequestMapping(value = "/usernoreview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String payList(Locale locale, Model model, int m_seq) {
		logger.info("회원이 결제한 상품 가져다 후기 남기게 하기", locale);
		List<PayDto> list = CashService.getAllPay(m_seq);
		System.out.println(m_seq);
		model.addAttribute("list",list);
		model.addAttribute("userrecount", list.size());
		return "usernoreview";
	}
	
	public static String createUUId() {
	      return UUID.randomUUID().toString().replaceAll("-", "");
	    }
	
}//end

