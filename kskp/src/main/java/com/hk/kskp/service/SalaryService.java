package com.hk.kskp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.ISalaryDao;
import com.hk.kskp.dtos.SalaryDto;

@Service
public class SalaryService implements ISalaryService {

	@Autowired
	private ISalaryDao SalaryDao;

	@Override
	public boolean appSal(SalaryDto dto) {
		return SalaryDao.appSal(dto);
	}

	@Override
	public List<SalaryDto> salList(int gu_seq) {
		return SalaryDao.salList(gu_seq);
	}

	@Override
	public List<SalaryDto> getsallist(int gu_seq) {
		return SalaryDao.getsallist(gu_seq);
	}

	@Override
	public List<SalaryDto> adminsallist() {
		return SalaryDao.adminsallist();
	}

	@Override
	public boolean okaysal(int s_seq) {
		return SalaryDao.okaysal(s_seq);
	}

	@Override
	public SalaryDto getSal(int gu_seq) {
		return SalaryDao.getSal(gu_seq);
	}

	@Override
	public SalaryDto waitsal(int gu_seq) {
		return SalaryDao.waitsal(gu_seq);
	}

	@Override
	public SalaryDto getgsal(int gu_seq) {
		return SalaryDao.getgsal(gu_seq);
	}

	@Override
	public List<SalaryDto> adminsal() {
		return SalaryDao.adminsal();
	}
	
}
