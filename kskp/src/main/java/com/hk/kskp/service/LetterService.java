package com.hk.kskp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.ILetterDao;
import com.hk.kskp.daos.LetterDao;
import com.hk.kskp.dtos.LetterDto;

@Service
public class LetterService implements ILetterService {

	@Autowired
	private ILetterDao LetterDao;
	
	@Override
	public boolean sendLetter(LetterDto dto) {
		return LetterDao.sendLetter(dto);
	}

	@Override
	public List<LetterDto> letterList(String l_receiver) {
		return LetterDao.letterList(l_receiver);
	}

	@Override
	public List<LetterDto> sendletterList(String l_sender,String pnum) {
		return LetterDao.sendletterList(l_sender, pnum);
	}

	@Override
	public LetterDto sendletterDetail(int seq) {
		return LetterDao.sendletterDetail(seq);
	}
	
	@Override
	public LetterDto letterDetail(int seq) {
		return LetterDao.letterDetail(seq);
	}

	@Override
	public boolean senddelflag(int seq) {
		return LetterDao.senddelflag(seq);
	}

	@Override
	public boolean recdelflag(int seq) {
		return LetterDao.recdelflag(seq);
	}

	@Override
	public boolean sendmuldel(String[] seqs) {
		return LetterDao.sendmuldel(seqs);
	}

	@Override
	public boolean recmuldel(String[] seqs) {
		return LetterDao.recmuldel(seqs);
	}

	@Override
	public void delletter(LetterDto dto) {
		LetterDao.delletter(dto);
	}

	@Override
	public int getPcount() {
		return LetterDao.getPcount();
	}

}
