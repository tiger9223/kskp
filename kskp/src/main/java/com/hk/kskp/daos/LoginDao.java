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



}
