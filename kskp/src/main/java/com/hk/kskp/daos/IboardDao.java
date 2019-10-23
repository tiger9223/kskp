package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

public interface IboardDao {
	
	//공지게시판글 전체보기
	public List<NoticeDto> getAllNList();
	
	//공지게시판 글 추가하기
	public boolean insertNBoard(NoticeDto dto);
	
	//공지게시판 글 상세보기
	public NoticeDto getNBoard(int seq);
	
	//공지게시판 글 수정하기
	public boolean updateNBoard(NoticeDto dto);
	
	//공지게시판 글 삭제하기
	public boolean delNBoard(int seq);
	
	//Q&A 글 전체보기
	public List<QaDto> getAllQList();
	
	//Q&A 글 추가하기
	public boolean insertQBoard(QaDto dto);
	
	//Q&A 글 상세보기
	public QaDto getQBoard(int seq);
	
	//Q&A 글 수정하기
	public boolean updateQBoard(QaDto dto);
	
	//Q&A 글 삭제하기
	public boolean delQBoard(int seq);
	
	
	
	
	
	
	
}
