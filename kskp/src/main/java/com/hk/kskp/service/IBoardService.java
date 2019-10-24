package com.hk.kskp.service;

import java.util.List;

import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

public interface IBoardService {
	
	//공지게시판글 전체보기
	public List<NoticeDto> ngetAllList();
	
	//공지게시판 글 추가하기
	public boolean ninsertBoard(NoticeDto dto);
	
	//공지게시판 글 상세보기
	public NoticeDto ngetBoard(int seq);
	
	//공지게시판 글 수정하기
	public boolean nupdateBoard(NoticeDto dto);
	
	//공지게시판 글 지우기
	public boolean ndelBoard(int seq);
	
	//Q&A 글 전체보기
	public List<QaDto> qgetAllList();
	
	//Q&A 글 추가하기
	public boolean qinsertBoard(QaDto dto);
	
	//Q&A 글 상세보기
	public QaDto qgetBoard(int seq);
	
	//Q&A 글 수정하기
	public boolean qupdateBoard(QaDto dto);
	
	//Q&A 글 삭제하기
	public boolean qdelBoard(int seq);
	
	

}
