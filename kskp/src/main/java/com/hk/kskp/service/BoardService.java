package com.hk.kskp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.BoardController;
import com.hk.kskp.daos.IBoardDao;
import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@Service
public class BoardService implements IBoardService{
	//service객체에서는 Dao객체를 가져다 쓴다.
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	@Autowired
	private IBoardDao boardDao;

	//공지게시판글 전체보기
	@Override
	public List<NoticeDto> ngetAllList(String pnum) {
		return boardDao.ngetAllList(pnum);
	}
	//페이지 개수 구하기
	@Override
	public int getPcount() {
		return boardDao.getPcount();
	}
	//공지게시판 글 추가하기
	@Override
	public boolean ninsertBoard(NoticeDto dto) {
		return boardDao.ninsertBoard(dto);
	}
	//공지게시판 글 상세보기
	@Override
	public NoticeDto ngetBoard(int seq) {
		return boardDao.ngetBoard(seq);
	}
	//공지게시판 글 수정하기
	@Override
	public boolean nupdateBoard(NoticeDto dto) {
		return boardDao.nupdateBoard(dto);
	}
	//공지게시판 조회수 올리기
	@Override
	public boolean readCount(int seq) {
		return boardDao.readCount(seq);
	}
	//공지게시판 글 삭제하기
	@Override
	public boolean ndelBoard(int seq) {
		return boardDao.ndelBoard(seq);
	}
	//공지게시판 전체 삭제하기
	@Override
	public boolean nmuldel(String[] seqs) {
		return boardDao.nmuldel(seqs);
	}
	
	
	//Q&A 글 전체보기
	@Override
	public List<QaDto> qgetAllList(String pnum) {
		return boardDao.qgetAllList(pnum);
	}
	//페이지 개수 구하기
	@Override
	public int qgetPcount() {
		return boardDao.qgetPcount();
	}
	//Q&A 글 추가하기
	@Override
	public boolean qinsertBoard(QaDto dto) {
		return boardDao.qinsertBoard(dto);
	}
	//Q&A 글 상세보기
	@Override
	public QaDto qgetBoard(int seq) {
		return boardDao.qgetBoard(seq);
	}
	//Q&A 글 수정하기
	@Override
	public boolean qupdateBoard(QaDto dto) {
		return boardDao.qupdateBoard(dto);
	}
	//Q&A 글 삭제하기
	@Override
	public boolean qdelBoard(int seq) {
		return boardDao.qdelBoard(seq);
	}
	//Q&A 글 답변달기
	@Override
	public boolean qinsertAns(QaDto dto) {
		return boardDao.qinsertAns(dto);
	}
	
	//Q&A 미답변 확인하기
	@Override
	public boolean unanswered(QaDto dto) {
		return boardDao.unanswered(dto);
			
	}	
	
}//IBoardService
