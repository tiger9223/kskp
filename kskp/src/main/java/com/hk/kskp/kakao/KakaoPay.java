package com.hk.kskp.kakao;

import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.hk.kskp.dtos.PayDto;

import lombok.extern.java.Log;



@Log
@Service
public class KakaoPay {
	 private static final String HOST = "https://kapi.kakao.com";
	    
	    private KakaoPayReadyVO kakaoPayReadyVO;

	    private KakaoPayApprovalVO kakaoPayApprovalVO;
		
	    
	    public String kakaoPayReady(PayDto dto) {
	 
	    	
	    	System.out.println(dto.getP_name()+"   "+dto.getP_num()+"   "+dto.getP_cost());
	        RestTemplate restTemplate = new RestTemplate();
	        String p_seq = Integer.toString(dto.getP_seq());
	        String g_seq = Integer.toString(dto.getG_seq());
	        String m_seq = Integer.toString(dto.getM_seq());
	        String p_cost = Integer.toString(dto.getP_cost());
	        String p_num = Integer.toString(dto.getP_num());
	        String p_flag = Integer.toString(dto.getP_flag());
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "ef1f8ef9e142f97694256e7421f3f829");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	        
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("partner_order_id", g_seq);
	        params.add("partner_user_id", m_seq);
	        params.add("item_name", dto.getP_name());
	        params.add("quantity", p_num);
	        params.add("total_amount", p_cost);
	        params.add("tax_free_amount", "100");
	        params.add("approval_url", "http://localhost:8888/kskp/kakaoPaySuccess.do?p_seq="+p_seq+"&g_seq="+g_seq+"&m_seq="+m_seq+"&p_cost="+p_cost+"&p_num="+p_num+"&p_flag="+p_flag+"&p_date="+dto.getP_date()+"&p_name="+dto.getP_name());
	        params.add("cancel_url", "http://localhost:8888/kakaoPayCancel");
	        params.add("fail_url", "http://localhost:8888/kakaoPaySuccessFail");
	 
	         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	 
	        try {
	            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
	            
	            log.info("" + kakaoPayReadyVO);
	            log.info(kakaoPayReadyVO.getNext_redirect_pc_url());
	            return kakaoPayReadyVO.getNext_redirect_pc_url();
	 
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return "/pay";
	        
	    }
	    
	    public KakaoPayApprovalVO kakaoPayInfo(String pg_token,String p_seq,String g_seq,String m_seq,String p_num,String p_cost, String p_flag,String p_date,String p_name) {

	        log.info("KakaoPayInfoVO............................................");
	        log.info("-----------------------------");
	      
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "ef1f8ef9e142f97694256e7421f3f829");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	 
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("tid", kakaoPayReadyVO.getTid());
	        params.add("partner_order_id", g_seq);
	        params.add("partner_user_id", m_seq);
	        params.add("pg_token", pg_token);
	        params.add("total_amount", p_cost);
	        
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	        
	        try {
	            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
	            log.info("" + kakaoPayApprovalVO);
	          
	            return kakaoPayApprovalVO;
	        
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return null;
	    }
	    
	    
	}
	 
