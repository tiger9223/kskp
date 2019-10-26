package com.hk.kskp.daos;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.BoardController;
import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Repository
public class BoardDao implements IBoardDao	{
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	private String nameSpace = "com.hk.notice.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<NoticeDto> ngetAllList() {
		return sqlSession.selectList(nameSpace+"ngetAlllist");
	}

	@Override
	public boolean ninsertBoard(NoticeDto dto) {
		int count = sqlSession.insert(nameSpace+"ninsertboard", dto);
		return count>0?true:false;
	}

	@Override
	public NoticeDto ngetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"ngetboard", seq);
	}

	@Override
	public boolean nupdateBoard(NoticeDto dto) {
		int count = sqlSession.update(nameSpace+"nupdateboard", dto);
		return count>0?true:false;
	}

	@Override
	public boolean readCount(int seq) {
		int count = sqlSession.update(nameSpace+"readcount", seq);
		return count>0?true:false;
	}
	
	@Override
	public boolean ndelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"ndelboard", seq);
		return count>0?true:false;
	}

	@Override
	public List<QaDto> qgetAllList() {
		return sqlSession.selectList(nameSpace+"qgetAlllist");
	}

	@Override
	public boolean qinsertBoard(QaDto dto) {
		int count = sqlSession.insert(nameSpace+"qinsertboard", dto);
		return count>0?true:false;
	}

	@Override
	public QaDto qgetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"qgetboard", seq);
	}

	@Override
	public boolean qupdateBoard(QaDto dto) {
		int count = sqlSession.update(nameSpace+"qupdateboard", dto);
		return false;
	}

	@Override
	public boolean qdelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"qdelQboard", seq);
		return false;
	}

	

}
