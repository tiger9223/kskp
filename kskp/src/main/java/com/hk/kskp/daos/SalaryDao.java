package com.hk.kskp.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.SalaryDto;

@Repository
public class SalaryDao implements ISalaryDao{
	
	private String nameSpace="com.hk.salary.";

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public boolean appSal(SalaryDto dto) {
		int count = sqlSession.insert(nameSpace+"appsal",dto);
		return count>0?true:false;
	}

	@Override
	public  List<SalaryDto> salList(int gu_seq) {
		return sqlSession.selectList(nameSpace+"sallist", gu_seq);
	}

	@Override
	public List<SalaryDto> getsallist(int gu_seq) {
		return sqlSession.selectList(nameSpace+"getsallist", gu_seq);
	}

	@Override
	public List<SalaryDto> adminsallist() {
		return sqlSession.selectList(nameSpace+"adminsallist");
	}

	@Override
	public boolean okaysal(int s_seq) {
		int count = sqlSession.update(nameSpace+"okaysal",s_seq);
		return count>0?true:false;
	}

}
