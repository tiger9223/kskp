package com.hk.kskp.service;


import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;

public interface ILoginService {

	//일반회원 회원가입
		public boolean mInsertUser(MembersDto dto);
		
	//가이드 회원가입	
		public boolean gInsertUser(GuideDto dto);
}