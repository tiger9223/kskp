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

	@Override
	public List<NoticeDto> ngetAllList() {
		return boardDao.ngetAllList();
	}

	@Override
	public boolean ninsertBoard(NoticeDto dto) {
		return boardDao.ninsertBoard(dto);
	}

	@Override
	public NoticeDto ngetBoard(int seq) {
		return boardDao.ngetBoard(seq);
	}

	@Override
	public boolean nupdateBoard(NoticeDto dto) {
		return boardDao.nupdateBoard(dto);
	}
	
	@Override
	public boolean readCount(int seq) {
		return boardDao.readCount(seq);
	}

	@Override
	public boolean ndelBoard(int seq) {
		return boardDao.ndelBoard(seq);
	}
	
	@Override
	public boolean nmuldel(String[] seqs) {
		return boardDao.muldel(seqs);
	}

	@Override
	public List<QaDto> qgetAllList() {
		return boardDao.qgetAllList();
	}

	@Override
	public boolean qinsertBoard(QaDto dto) {
		return boardDao.qinsertBoard(dto);
	}

	@Override
	public QaDto qgetBoard(int seq) {
		return boardDao.qgetBoard(seq);
	}

	@Override
	public boolean qupdateBoard(QaDto dto) {
		return boardDao.qupdateBoard(dto);
	}

	@Override
	public boolean qdelBoard(int seq) {
		return boardDao.qdelBoard(seq);
	}

	@Override
	public boolean muldel(String[] chk) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
