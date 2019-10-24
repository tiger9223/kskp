package com.hk.kskp.service;




import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;


public interface ILoginService {

	//일반회원 회원가입
		public boolean mInsertUser(MembersDto dto);
	//가이드 회원가입	
		public boolean gInsertUser(GuideDto dto);
	//로그인
		public MembersDto mLogin(String m_email, String m_pw);
	//로그인
		public GuideDto gLogin(String gu_email, String gu_pw);
	//일반회원 정보조회
		public MembersDto mUserInfo(String m_email);
	//가이드 정보조회
		public GuideDto gUserInfo(String gu_email);
	//일반회원 정보 수정
		public boolean userUpdate(MembersDto dto);
	//가이드 정보 수정
		public boolean guserUpdate(GuideDto dto);
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
}