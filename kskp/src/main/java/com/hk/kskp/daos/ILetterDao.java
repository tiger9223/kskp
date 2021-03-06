package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.LetterDto;


public interface ILetterDao {

	//쪽지보내기
	public boolean sendLetter(LetterDto dto);
	
	//받은쪽지보기
	public List<LetterDto> letterList(String l_receiver,String pnum); 
	
	//보낸쪽지보기
	public List<LetterDto> sendletterList(String l_sender,String pnum); 
	
	//받은쪽지 상세보기
	public LetterDto letterDetail(int seq);
	
	//보낸쪽지 상세보기
	public LetterDto sendletterDetail(int seq);
	
	//보낸쪽지함 상세보기에서 글 삭제하기
	public boolean senddelflag(int seq);
	
	//보낸쪽지함 상세보기에서 글 삭제하기
	public boolean recdelflag(int seq);
	
	//보낸쪽지함 여러글 삭제
	public boolean sendmuldel(String[] seqs); 
	
	//받은쪽지함 여러글 삭제
	public boolean recmuldel(String[] seqs);
	
	//메세지 완전 삭제
	public void delletter(LetterDto dto);

	//받은 메세지 함 페이지 개수 구하기
	public int getPcount(LetterDto dto);
	
	//보낸 메세지 함 페이지 개수 구하기
	public int getPcount1(LetterDto dto);
		
	//받은메세지 갯수
	public int lcount(String l_receiver);

	//보낸메세지 갯수
	public int scount(String l_sender);
	
}
