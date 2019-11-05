package com.hk.kskp;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.kakao.KakaoPay;

import lombok.Setter;
import lombok.extern.java.Log;

@Log
@Controller
public class KakaoController {
	
	 @Setter(onMethod_ = @Autowired)
	    private KakaoPay kakaopay;
	    
	    
	    @GetMapping("/kakaoPay.do")
	    public void kakaoPayGet() {
	        
	    }
	    
	    @PostMapping("/kakaoPay.do")
	    public String kakaoPay(PayDto dto) {
	    	System.out.println("디디디디디디디"+dto);
	        log.info("kakaoPay post............................................");
	        return "redirect:" + kakaopay.kakaoPayReady(dto);
	 
	    }
	    
	    @GetMapping("/kakaoPaySuccess.do")
	    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model,String g_seq,String p_cost) {
	        log.info("kakaoPaySuccess get............................................");
	        log.info("kakaoPaySuccess pg_token : " + pg_token);
	        
	        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token,  g_seq, p_cost));
	    }
	
	
	
}
