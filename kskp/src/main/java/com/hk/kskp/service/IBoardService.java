package com.hk.kskp.service;

import java.util.List;

import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

public interface IBoardService {
	
	//공지게시판글 전체보기
	public List<NoticeDto> NgetAllList();
	
	//공지게시판 글 추가하기
	public boolean NinsertBoard(NoticeDto dto);
	
	//공지게시판 글 상세보기
	public NoticeDto NgetBoard(int seq);
	
	//공지게시판 글 수정하기
	public boolean NupdateBoard(NoticeDto dto);
	
	//공지게시판 글 지우기
	public boolean NdelBoard(int seq);
	
	//Q&A 글 전체보기
	public List<QaDto> QgetAllList();
	
	//Q&A 글 추가하기
	public boolean QinsertBoard(QaDto dto);
	
	//Q&A 글 상세보기
	public QaDto QgetBoard(int seq);
	
	//Q&A 글 수정하기
	public boolean QupdateBoard(QaDto dto);
	
	//Q&A 글 삭제하기
	public boolean QdelBoard(int seq);
	
	

}
