package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.SalaryDto;

public interface ISalaryDao {

	//가이드 수익 송금 신청 
	public boolean appSal(SalaryDto dto);
	//송금내역
	public List<SalaryDto> salList(int gu_seq);
	//가이드 정산 내역 
	public List<SalaryDto> getsallist(int gu_seq);
	//관리자 송금신청확인 리스트
	public List<SalaryDto> adminsallist();
	//관리자 정산확인
	public boolean okaysal(int s_seq);
	//가이드  정산금액
	public SalaryDto getSal(int gu_seq);
	//가이드 정산 대기중
	public SalaryDto waitsal(int gu_seq);
	//가이드 수수료 뺀 정산금액
	public SalaryDto getgsal(int gu_seq);
	
	
}
