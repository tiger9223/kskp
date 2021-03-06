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
		int count = sqlSession.insert(nameSpace+"pay",dto);
		return count>0?true:false;
	}

	@Override//가이드 수익가져오기
	public List<PayDto> getPays(int gu_seq) {
		return sqlSession.selectList(nameSpace+"getpays", gu_seq);
	}

	@Override//가이드 총수익
	public int SalSum(int gu_seq){
		String a = sqlSession.selectOne(nameSpace+"salsum",gu_seq);
		if(a == null) {
			a = "0";
		}
		return Integer.parseInt(a);
	}
	
	@Override//가이드 총수익 인원수
	public int SalPeople(int gu_seq){
		String a = sqlSession.selectOne(nameSpace+"salpeople",gu_seq);
		if(a == null) {
			a = "0";
		}
		return Integer.parseInt(a);
	}

	@Override//나의 결제 내역
	public List<PayDto> getAllPay(int m_seq) {
		return sqlSession.selectList(nameSpace+"getallpay",m_seq);
	}

	@Override//송금 신청하기
	public boolean applySal(SalaryDto dto) {
		int count = sqlSession.insert(nameSpace+"insertsal",dto);
		return count>0?true:false;
	}
	
	@Override//송금 승인하기
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

	@Override//장바구니 결제
	public boolean cartPay(PayDto dto) {
		int count = sqlSession.update(nameSpace+"cartpay",dto);
		return count>0?true:false;
	}

	
	@Override//내 장바구니 담긴것 보기
	public List<PayDto> cartList(int m_seq) {
		return sqlSession.selectList(nameSpace+"cartList", m_seq);
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

	@Override//리뷰쓰기
	public PayDto review(int p_seq) {
		return sqlSession.selectOne(nameSpace+"review",p_seq);
	}

	@Override
	public boolean updatereivew(int p_seq) {
		int count = sqlSession.update(nameSpace+"updatereivew", p_seq);
		return count>0?true:false;
	}

	@Override
	public List<PayDto> detailSal(PayDto dto) {
		return sqlSession.selectList(nameSpace+"getpays1", dto);
	}



	

}
