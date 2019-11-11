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
	    public void kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model,String p_seq, String g_seq, String m_seq , String p_cost, String p_num, String p_flag, String p_date, String p_name) {
	        log.info("kakaoPaySuccess get............................................");
	        log.info("kakaoPaySuccess pg_token : " + pg_token);
	        int pseq = Integer.parseInt(p_seq);
	        int gseq = Integer.parseInt(g_seq);
	        int mseq = Integer.parseInt(m_seq);
	        int pcost = Integer.parseInt(p_cost);
	        int pnum = Integer.parseInt(p_num);
	        int pflag = Integer.parseInt(p_flag);
	        PayDto dto = new PayDto(pseq, gseq, mseq, pcost, pnum, p_date, p_name, pflag);
	        model.addAttribute("dto",dto);
	        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token, p_seq, g_seq, m_seq, p_num, p_cost,p_flag, p_date, p_name));
	    }
	
	
	
}
