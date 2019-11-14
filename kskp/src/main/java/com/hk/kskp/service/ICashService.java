package com.hk.kskp.service;

import java.util.List;

import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.SalaryDto;

public interface ICashService {

	//결제하기
	public boolean pay(PayDto dto);
	
	//가이드 수익가져오기
	public List<PayDto> getPays(int gu_seq);
		
	//가이드 총수익
	public int SalSum(int gu_seq);
		
	//가이드 총수익 인원수
	public int SalPeople(int gu_seq);
	
	//나의 결제 내역
	public List<PayDto> getAllPay(int m_seq);
	
	//송금 신청하기
	public boolean applySal(SalaryDto dto);
	
	//송금 승인하기
	public boolean okSal(SalaryDto dto);
	
	//송금 내역 확인하기
	public List<SalaryDto> getsalary(int g_seq);
	
	//장바구니 담기
	public boolean cart(PayDto dto);
	
	//장바구니 결제
	public boolean cartPay(PayDto dto);
	
	//내 장바구니 담긴 것 보기
	public List<PayDto> cartList(int m_seq);
	
	//장바구니 담은 것 지우기
	public boolean delCart(int p_seq);
	
	//결제 인원 수
	public PayDto getPeople(int p_seq);
	
	//리뷰 쓰기
	public PayDto review(int p_seq);
	
	//리뷰 작성 후
	public boolean updatereivew(int p_seq);
	
	//상품 상품당 수익내역
	public List<PayDto> detailSal(PayDto dto);
}
