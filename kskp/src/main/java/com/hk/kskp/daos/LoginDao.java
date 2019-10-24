package com.hk.kskp.daos;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;



@Repository
public class LoginDao implements ILoginDao {

	private String nameSpace="com.hk.login.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public boolean mInsertUser(MembersDto dto) {
		int count = sqlSession.insert(nameSpace+"minsertUser", dto);
		return count > 0 ? true:false;
	}          

	@Override
	public boolean gInsertUser(GuideDto dto) {
		int count = sqlSession.insert(nameSpace+"ginsertUser", dto);
		return count > 0 ? true:false;
	}

	@Override
	public MembersDto mLogin(String m_email, String m_pw) {
		MembersDto ldto = new MembersDto(m_email,m_pw);
		System.out.println("mdto="+ldto);
		return sqlSession.selectOne(nameSpace+"mLogin", ldto);
	}

	@Override
	public GuideDto gLogin(String gu_email, String gu_pw) {
		GuideDto gdto = new GuideDto(gu_email, gu_pw);
		return sqlSession.selectOne(nameSpace+"gLogin", gdto);
	}

	@Override
	public MembersDto mUserInfo(String m_email) {
		return sqlSession.selectOne(nameSpace+"muserinfo", m_email);
	}
	
	@Override
	public GuideDto gUserInfo(String gu_email) {
		return sqlSession.selectOne(nameSpace+"guserinfo", gu_email);
	}

	@Override
	public boolean userUpdate(MembersDto dto) {
		int count = sqlSession.update(nameSpace+"userUpdate", dto);
		return count > 0 ? true:false;
	}

	@Override
	public boolean guserUpdate(GuideDto dto) {
		int count = sqlSession.update(nameSpace+"guserUpdate", dto);
		return count > 0 ? true:false;
	}
	}



