

package com.hk.kskp;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.hk.kskp.service.ICashService;
import com.hk.kskp.service.IGoodsService;
import com.hk.kskp.service.ILoginService;
import com.hk.kskp.service.IReviewService;
import com.hk.kskp.utils.UploadFileUtil;

@Controller
public class ReviewController {
		
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private ILoginService LoginService;
	
	@Autowired
	private IGoodsService GoodsService;
	
	@Autowired
	private ICashService CashService;
	

	@Autowired
	private IReviewService ReviewService;
	
	


	@RequestMapping(value = "/writereview.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String wirtereview(Locale locale,Model model ,int p_seq) {
		logger.info("후기작성 이동", locale);
	    PayDto dto = CashService.review(p_seq);
	    System.out.println(dto);
		model.addAttribute("dto",dto);
		return "starRboard";
	}
	
	@ResponseBody
    @RequestMapping(value = "/imageUpload.do",method= {RequestMethod.POST})
    public String communityImageUpload(HttpServletRequest request, HttpServletResponse response, @RequestParam MultipartFile upload) throws Exception {
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
            System.out.println(fileUrl);
            printWriter.println("{\"fileName\" : \""+stored_fname+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");     
            printWriter.flush();
            out.close();
            printWriter.close(); 
            return null;
        }
	
	
	
	
	
	
	public static String createUUId() {
	      return UUID.randomUUID().toString().replaceAll("-", "");
	    }
	
}//end

