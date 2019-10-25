package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.LetterDto;


public interface ILetterDao {

	//쪽지보내기
	public boolean sendLetter(String l_sender,String l_reciver,String l_title,String l_conts);
	
	//전체쪽지보기
	public List<LetterDto> letterList(); 
	
	//쪽지 상세보기
	public LetterDto letterDetail(int seq);
	
	//공지게시판 글 삭제하기
	public boolean delLetter(int seq);
	
}
