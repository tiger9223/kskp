package com.hk.kskp.daos;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public boolean naverUser(String m_email,String m_name ) {
		Map<String, String> map = new HashMap<>();
		map.put("m_email",m_email);
		map.put("m_name",m_name);
		int count = sqlSession.insert(nameSpace+"naverUser", map);
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
	public MembersDto mUserInfo(int seq) {
		return sqlSession.selectOne(nameSpace+"muserinfo", seq);
	}
	
	@Override
	public GuideDto gUserInfo(int seq) {
		return sqlSession.selectOne(nameSpace+"guserinfo", seq);
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
	@Override
	public List<MembersDto> getMuserlist() {
		return sqlSession.selectList(nameSpace+"getMUserStatus");
	}
	
	@Override
	public List<GuideDto> getGuserlist() {
		return sqlSession.selectList(nameSpace+"getGUserStatus");
	}


	
	
	
	}



