package com.hk.kskp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.ICashDao;
import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.SalaryDto;

@Service
public class CashService implements ICashService{

	@Autowired
	private ICashDao CashDao;
	
	@Override
	public boolean pay(PayDto dto) {
		return CashDao.pay(dto);
	}

	@Override
	public List<PayDto> getPays(int gu_seq) {
		return CashDao.getPays(gu_seq);
	}

	@Override
	public int SalSum(int gu_seq) {
		return CashDao.SalSum(gu_seq);
	}

	@Override
	public int SalPeople(int gu_seq) {
		return CashDao.SalPeople(gu_seq);
	}

	@Override
	public List<PayDto> getAllPay(int m_seq) {
		return CashDao.getAllPay(m_seq);
	}

	@Override
	public boolean applySal(SalaryDto dto) {
		return CashDao.applySal(dto);
	}

	@Override
	public boolean okSal(SalaryDto dto) {
		return CashDao.okSal(dto);
	}

	@Override
	public List<SalaryDto> getsalary(int g_seq) {
		return CashDao.getsalary(g_seq);
	}

	@Override
	public boolean cart(PayDto dto) {
		return CashDao.cart(dto);
	}
	
	@Override
	public boolean cartPay(PayDto dto) {
	return CashDao.cartPay(dto);
	}
	
	@Override
	public List<PayDto> cartList(int m_seq) {
		return CashDao.cartList(m_seq);
	}

	@Override
	public boolean delCart(int p_seq) {
		return CashDao.delCart(p_seq);
	}

	@Override
	public PayDto getPeople(int p_seq) {
		return CashDao.getPeople(p_seq);
	}

	@Override
	public PayDto review(int p_seq) {
		return CashDao.review(p_seq);
	}

	@Override
	public boolean updatereivew(int p_seq) {
		return CashDao.updatereivew(p_seq);
	}

	@Override
	public List<PayDto> detailSal(PayDto dto) {
		return CashDao.detailSal(dto);
	}

	

	

	

}
