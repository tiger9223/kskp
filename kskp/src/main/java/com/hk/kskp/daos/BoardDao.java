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
	public List<NoticeDto> NgetAllList() {
		return sqlSession.selectList(nameSpace+"NgetAlllist");
	}

	@Override
	public boolean NinsertBoard(NoticeDto dto) {
		int count = sqlSession.insert(nameSpace+"Ninsertboard", dto);
		return count>0?true:false;
	}

	@Override
	public NoticeDto NgetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"Ngetboard", seq);
	}

	@Override
	public boolean NupdateBoard(NoticeDto dto) {
		int count = sqlSession.update(nameSpace+"Nupdateboard", dto);
		return count>0?true:false;
	}

	@Override
	public boolean NdelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"Ndelboard", seq);
		return count>0?true:false;
	}

	@Override
	public List<QaDto> QgetAllList() {
		return sqlSession.selectList(nameSpace+"QgetAlllist");
	}

	@Override
	public boolean QinsertBoard(QaDto dto) {
		int count = sqlSession.insert(nameSpace+"Qinsertboard", dto);
		return count>0?true:false;
	}

	@Override
	public QaDto QgetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"Qgetboard", seq);
	}

	@Override
	public boolean QupdateBoard(QaDto dto) {
		int count = sqlSession.update(nameSpace+"Qupdateboard", dto);
		return false;
	}

	@Override
	public boolean QdelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"QdelQboard", seq);
		return false;
	}

}
