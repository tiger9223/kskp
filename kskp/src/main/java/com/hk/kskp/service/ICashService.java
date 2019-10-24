package com.hk.kskp.service;

import java.util.List;

import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.SalaryDto;

public interface ICashService {

	//결제하기
	public boolean pay(PayDto dto);
	
	//가이드 수익내기 위한 결제 정보 가져오기
	public PayDto getPays();
	
	//가이드 수익내기
	public boolean insertSal(SalaryDto dto);
	
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
	
	//장바구니 담은 것 지우기
	public boolean delCart(int p_seq);
	
	//결제 인원 수
	public PayDto getPeople(int p_seq);
}