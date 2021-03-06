package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

public interface IBoardDao {
	
	//공지게시판글 전체보기
	public List<NoticeDto> ngetAllList(String pnum);
	
	//페이지 개수 구하기
	public int getPcount();
	
	//공지게시판 글 추가하기
	public boolean ninsertBoard(NoticeDto dto);
	
	//공지게시판 글 상세보기
	public NoticeDto ngetBoard(int seq);
	
	//공지게시판 글 수정하기
	public boolean nupdateBoard(NoticeDto dto);
	
	//공지게시판 조회수 올리기
	public boolean readCount(int seq);
	
	//공지게시판 글 삭제하기
	public boolean ndelBoard(int seq);
	
	//공지게시판 전체 삭제하기
	boolean nmuldel(String[] seqs);
	
	
	
	//Q&A 글 전체보기
	public List<QaDto> qgetAllList(String pnum);
	
	//페이지 개수 구하기
	public int qgetPcount();
	
	//Q&A 글 추가하기
	public boolean qinsertBoard(QaDto dto);
	
	//Q&A 글 상세보기
	public QaDto qgetBoard(int seq);
	
	//Q&A 글 수정하기
	public boolean qupdateBoard(QaDto dto);
	
	//Q&A 글 삭제하기
	public boolean qdelBoard(int seq);

	//Q&A 글 답변달기
	public boolean qinsertAns(QaDto dto);

	//Q&A 미답변 확인하기
	public List<QaDto> unansweredList(String pnum);
	
	
	
	
	
	
	
	
}
