package com.hk.kskp.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	//공지게시판글 전체보기
	@Override
	public List<NoticeDto> ngetAllList(String pnum) {
		return sqlSession.selectList(nameSpace+"ngetAlllist", pnum);
	}
	
	//페이지 개수 구하기
	@Override
	public int getPcount() {
		return sqlSession.selectOne(nameSpace+"pcount");
	}
	//공지게시판 글 추가하기
	@Override
	public boolean ninsertBoard(NoticeDto dto) {
		int count = sqlSession.insert(nameSpace+"ninsertboard", dto);
		return count>0?true:false;
	}
	//공지게시판 글 상세보기
	@Override
	public NoticeDto ngetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"ngetboard", seq);
	}
	//공지게시판 글 수정하기
	@Override
	public boolean nupdateBoard(NoticeDto dto) {
		int count = sqlSession.update(nameSpace+"nupdateboard", dto);
		return count>0?true:false;
	}
	//공지게시판 조회수 올리기
	@Override
	public boolean readCount(int seq) {
		int count = sqlSession.update(nameSpace+"readcount", seq);
		return count>0?true:false;
	}
	//공지게시판 글 삭제하기
	@Override
	public boolean ndelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"ndelboard", seq);
		return count>0?true:false;
	}
	//공지게시판 전체 삭제하기
	@Override
	public boolean nmuldel(String[] seqs) {
		Map<String, String[]>map=new HashMap<>();
		map.put("seqs", seqs);
		int count=sqlSession.delete(nameSpace+"nmuldel", map);
		return count>0?true:false;
	}
	//Q&A 글 전체보기
	@Override
	public List<QaDto> qgetAllList(String pnum) {
		return sqlSession.selectList(nameSpace+"qgetAlllist",pnum);
	}
	//페이지 개수 구하기
	@Override
	public int qgetPcount() {
		return sqlSession.selectOne(nameSpace+"qpcount");
	}
	//Q&A 글 추가하기
	@Override
	public boolean qinsertBoard(QaDto dto) {
		int count = sqlSession.insert(nameSpace+"qinsertboard", dto);
		return count>0?true:false;
	}
	//Q&A 글 상세보기
	@Override
	public QaDto qgetBoard(int seq) {
		return sqlSession.selectOne(nameSpace+"qgetboard", seq);
	}
	//Q&A 글 수정하기
	@Override
	public boolean qupdateBoard(QaDto dto) {
		int count = sqlSession.update(nameSpace+"qupdateboard", dto);
		return count>0?true:false;
	}
	//Q&A 글 삭제하기
	@Override
	public boolean qdelBoard(int seq) {
		int count = sqlSession.delete(nameSpace+"qdelboard", seq);
		return count>0?true:false;
	}
	//Q&A 글 답변달기
	@Override
	public boolean qinsertAns(QaDto dto) {
		int count = sqlSession.update(nameSpace+"insertans", dto);
		return count>0?true:false;
	}
	
	//Q&A 미답변 확인하기
	@Override
	public boolean unanswered(QaDto dto) {
		int count = sqlSession.update(nameSpace+"qunanswered", dto);
		return count>0?true:false;
		}
	




	

	

}
