package com.hk.kskp.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

@Repository
public class BoardDao implements IBoardDao	{
	
	private String nameSpace = "com.hk.kskp.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<NoticeDto> NgetAllList() {
		return sqlSession.selectList(nameSpace+"getAllNlist");
	}

	@Override
	public boolean NinsertBoard(NoticeDto dto) {
		int count = sqlSession.insert(nameSpace+"insertNboard", dto);
		return count>0?true:false;
	}

	@Override
	public NoticeDto NgetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"getNboard", seq);
	}

	@Override
	public boolean NupdateBoard(NoticeDto dto) {
		int count = sqlSession.update(nameSpace+"updateNboard", dto);
		return count>0?true:false;
	}

	@Override
	public boolean NdelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"delNboard", seq);
		return count>0?true:false;
	}

	@Override
	public List<QaDto> QgetAllList() {
		return sqlSession.selectList(nameSpace+"getAllQlist");
	}

	@Override
	public boolean QinsertBoard(QaDto dto) {
		int count = sqlSession.insert(nameSpace+"insertQboard", dto);
		return count>0?true:false;
	}

	@Override
	public QaDto QgetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"getQboard", seq);
	}

	@Override
	public boolean QupdateBoard(QaDto dto) {
		int count = sqlSession.update(nameSpace+"updateQboard", dto);
		return false;
	}

	@Override
	public boolean QdelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"delQboard", seq);
		return false;
	}

}
