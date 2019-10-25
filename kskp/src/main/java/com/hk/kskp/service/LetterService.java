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
	public boolean sendLetter(String l_sender,String l_receiver,String l_title,String l_conts) {
		return LetterDao.sendLetter(l_sender, l_receiver, l_title, l_conts);
	}

	@Override
	public List<LetterDto> letterList() {
		return LetterDao.letterList();
	}

	@Override
	public LetterDto letterDetail(int seq) {
		return LetterDao.letterDetail(seq);
	}

	@Override
	public boolean delLetter(int seq) {
		return LetterDao.delLetter(seq);
	}

}
