package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.LetterDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.dtos.SalaryDto;

public interface ILoginDao {

	//이메일인증 일반회원 회원가입
	public boolean mInsertUser(MembersDto dto);
	//핸드폰인증 일반회원 가입
	public boolean minsertUser1(MembersDto dto);
	//네이버 로그인 데이터
	public boolean naverUser(String m_email,String m_name);
	//가이드 회원가입
	public boolean gInsertUser(GuideDto dto);
	//로그인
	public MembersDto mLogin(String m_email, String m_pw);
	//로그인
	public GuideDto gLogin(String gu_email, String gu_pw);
	//일반회원 정보조회
	public MembersDto mUserInfo(int seq);
	//가이드 정보조회
	public GuideDto gUserInfo(int seq);
	//일반회원 정보 수정
	public boolean userUpdate(MembersDto dto);
	//가이드 정보 수정
	public boolean guserUpdate(GuideDto dto);
//	//회원 탈퇴
//	public boolean withdraw(String rid);
	
	public int memailCheck(String email);
	
	public int gemailCheck(String email);
	//일반 회원 전체조회
	public List<MembersDto> getMuserlist();
	
	//가이드 회원 전체조회

	public List<GuideDto> getGuserlist();
	//아이디 중복체크
	public MembersDto idChk(String m_email);
	public GuideDto idChk1(String gu_email);
	

	//가이드 승인
	public boolean guideApp(GuideDto dto);
	//가이드 거절
	public boolean delGuide(GuideDto dto);
	//가이드 가입승인 목록
	public List<GuideDto>getGuserapplist(String pnum);
	
	//가이드 승인 페이지 개수 구하기
	public int getPcount(GuideDto dto);
		
	//가이드 정산된 수익 금액 업데이트
	public boolean guideSal(SalaryDto dto);
	


	
	
}
