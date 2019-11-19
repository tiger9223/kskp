package com.hk.kskp.service;




import java.util.List;

import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.kskp.dtos.SalaryDto;


public interface ILoginService {

	//일반회원 회원가입
		public boolean mInsertUser(MembersDto dto);
	//일반회원 회원가입
		public boolean minsertUser1(MembersDto dto);
	//네이버 로그인
		public boolean naverUser(String m_email, String m_name);
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
		
		public int memailCheck(String email);
		
		public int gemailCheck(String email);	
		
	//아이디 중복체크
		public MembersDto idChk(String m_email);
		public GuideDto idChk1(String gu_email);
//				//회원 탈퇴
//				public boolean withdraw(String rid);
//				//아이디 중복체크
//				public LoginDto idChk(String rid);
//				//전체 회원 조회
//				public List<LoginDto> getAllUserStatus();
//				//사용중인 회원 조회
//				public List<LoginDto> getAllUserList();
//				//사용자 상세조회
//				public LoginDto getUser(String rid);
//				//사용자 등급변경
//				public boolean updateUserRole(String rid, String rrole);
		//일반회원 전체 조회
		public List<MembersDto> getMuserlist();
		
		//가이츠 전체 조회
		public List<GuideDto> getGuserlist();
		
		//가이드 전체 조회 페이지 수 
		public int getPcount(GuideDto dto);
		//가이드 승인
		public boolean guideApp(GuideDto dto);
		//가이드 거절
		public boolean delGuide(GuideDto dto);
		//가이드 승인인원리스트
		public List<GuideDto> getGuserapplist(String pnum);
		
		//가이드 정산된 수익 금액 업데이트
		public boolean guideSal(SalaryDto dto);
		
		//관리자 정산 금액 업데이트
		public boolean adminSal(int m_salary);
		
		
		
		
}