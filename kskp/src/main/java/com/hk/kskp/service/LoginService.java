package com.hk.kskp.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.ILoginDao;
import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;
import com.sun.org.apache.xml.internal.utils.NameSpace;


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
	
	@Override
	public MembersDto idChk(String m_email) {
		return loginDao.idChk(m_email);
	}
	@Override
	public GuideDto idChk1(String gu_email) {
		return loginDao.idChk1(gu_email);
		}
	@Override
	public List<MembersDto> getMuserlist() {
		return loginDao.getMuserlist();
	}
	@Override
	public List<GuideDto> getGuserlist() {
		return loginDao.getGuserlist();
	}
	@Override
	public boolean guideApp(GuideDto dto) {
		return loginDao.guideApp(dto);
	}
	@Override
	public boolean delGuide( GuideDto dto) {
		return loginDao.delGuide(dto);
	}
	@Override
	public int getPcount(GuideDto dto) {
		return loginDao.getPcount(dto);
	}
	@Override

	public int memailCheck(String email) {
		// TODO Auto-generated method stub
		return loginDao.memailCheck(email);
	}
	@Override
	public int gemailCheck(String email) {
		// TODO Auto-generated method stub
		return loginDao.gemailCheck(email);
	}
	public List<GuideDto> getGuserapplist(String pnum) {
		return loginDao.getGuserapplist(pnum);

	}

	

	



}
