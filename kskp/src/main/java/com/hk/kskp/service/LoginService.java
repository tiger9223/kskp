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
	public boolean gInsertUser(GuideDto dto) {
		return loginDao.gInsertUser(dto);
	}
	



}
