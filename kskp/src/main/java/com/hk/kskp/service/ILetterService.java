package com.hk.kskp.service;

import java.util.List;

import com.hk.kskp.dtos.LetterDto;

public interface ILetterService {

	//쪽지보내기
	public boolean sendLetter(LetterDto dto);
	
	//전체쪽지보기
	public List<LetterDto> letterList(String l_receiver); 
	
	//쪽지 상세보기
	public LetterDto letterDetail(int seq);
	
	//공지게시판 글 삭제하기
	public boolean delLetter(int seq);
	
	public boolean muldel(String[] seqs);
}
