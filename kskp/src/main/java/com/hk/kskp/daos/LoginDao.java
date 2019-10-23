package com.hk.kskp.daos;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.GuideDto;
import com.hk.kskp.dtos.MembersDto;
import com.hk.login.dtos.LoginDto;


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
		MembersDto dto = new MembersDto();
		MembersDto mdto = new MembersDto(m_email, m_pw);
		return sqlSession.selectOne(nameSpace+"mLogin", mdto);
	}

	@Override
	public GuideDto gLogin(String gu_email, String gu_pw) {
		GuideDto dto = new GuideDto();
		GuideDto gdto = new GuideDto(gu_email, gu_pw);
		return sqlSession.selectOne(nameSpace+"gLogin", gdto);
	}


}
