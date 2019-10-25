package com.hk.kskp.service;

import java.util.List; 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.ILoginDao;
import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;


@Service
public class LoginService implements ILoginService{

	@Autowired
	private ILoginDao loginDao;

	@Override
	public boolean mInsertUser(MembersDto dto) {
		return loginDao.mInsertUser(dto);
	}
	@Override
	public boolean minsertUser1(MembersDto dto) {
		return loginDao.minsertUser1(dto);
	}
	
	@Override
	public boolean naverUser(String m_email, String m_name) {
		return loginDao.naverUser(m_email, m_name);
	}

	@Override
	public boolean gInsertUser(GuideDto dto) {
		return loginDao.gInsertUser(dto);
	}

	@Override
	public MembersDto mLogin(String m_email, String m_pw) {
		return loginDao.mLogin(m_email, m_pw);
	}

	@Override
	public GuideDto gLogin(String gu_email, String gu_pw) {
		return loginDao.gLogin(gu_email, gu_pw);
	}

	@Override
	public MembersDto mUserInfo(int seq) {
		return loginDao.mUserInfo(seq);
	}
	
	@Override
	public GuideDto gUserInfo(int seq) {
		return loginDao.gUserInfo(seq);
	}
	
	@Override
	public boolean userUpdate(MembersDto dto) {
		return loginDao.userUpdate(dto);
	}

	@Override
	public boolean guserUpdate(GuideDto dto) {
		return loginDao.guserUpdate(dto);
	}
	



}
