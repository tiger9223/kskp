package com.hk.kskp.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.SalaryDto;

@Repository
public class CashDao implements ICashDao{
	
	private String nameSpace = "com.hk.cash.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override//결제하기
	public boolean pay(PayDto dto) {
		int count = sqlSession.update(nameSpace+"pay",dto);
		return count>0?true:false;
	}

	@Override//가이드 수익내기 위한 결제 정보 가져오기
	public PayDto getPays() {
		return sqlSession.selectOne(nameSpace+"getpays");
	}

	@Override//가이드 수익내기
	public boolean insertSal(SalaryDto dto) {
		int count = sqlSession.insert(nameSpace+"insertsal",dto);
		return count>0?true:false;
	}

	@Override//나의 결제 내역
	public List<PayDto> getAllPay(int m_seq) {
		return sqlSession.selectOne(nameSpace+"getallpay");
	}

	@Override//송금 신청하기
	public boolean applySal(SalaryDto dto) {
		int count = sqlSession.insert(nameSpace+"insertsal",dto);
		return count>0?true:false;
	}
	
	@Override
	public boolean okSal(SalaryDto dto) {
		int count = sqlSession.update(nameSpace+"oksal",dto);
		return count>0?true:false;
	}
	
	@Override//송금 내역 확인하기
	public List<SalaryDto> getsalary(int g_seq) {
		Map<Integer, Integer> map = new HashMap<Integer, Integer>();
		map.put(g_seq, g_seq);
		return null;
	}

	@Override//장바구니 담기
	public boolean cart(PayDto dto) {
		int count = sqlSession.insert(nameSpace+"cart",dto);
		return count>0?true:false;
	}

	@Override//장바구니 담은 것 지우기
	public boolean delCart(int p_seq) {
		int count = sqlSession.delete(nameSpace+"delcart",p_seq);
		return count>0?true:false;
	}
	
	@Override//결제 인원 수
	public PayDto getPeople(int p_seq) {
		return sqlSession.selectOne(nameSpace+"getpeople",p_seq);
	}

	

}
