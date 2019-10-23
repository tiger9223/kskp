package com.hk.kskp.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.IBoardDao;
import com.hk.kskp.dtos.NoticeDto;
import com.hk.kskp.dtos.QaDto;

@Service
public class BoardService implements IBoardService{
	//service객체에서는 Dao객체를 가져다 쓴다.
	
	@Autowired
	private IBoardDao boardDao;

	@Override
	public List<NoticeDto> NgetAllList() {
		return boardDao.NgetAllList();
	}

	@Override
	public boolean NinsertBoard(NoticeDto dto) {
		return boardDao.NinsertBoard(dto);
	}

	@Override
	public NoticeDto NgetBoard(int seq) {
		return boardDao.NgetBoard(seq);
	}

	@Override
	public boolean NupdateBoard(NoticeDto dto) {
		return boardDao.NupdateBoard(dto);
	}

	@Override
	public boolean NdelBoard(int seq) {
		return boardDao.NdelBoard(seq);
	}

	@Override
	public List<QaDto> QgetAllList() {
		return boardDao.QgetAllList();
	}

	@Override
	public boolean QinsertBoard(QaDto dto) {
		return boardDao.QinsertBoard(dto);
	}

	@Override
	public QaDto QgetBoard(int seq) {
		return boardDao.QgetBoard(seq);
	}

	@Override
	public boolean QupdateBoard(QaDto dto) {
		return boardDao.QupdateBoard(dto);
	}

	@Override
	public boolean QdelBoard(int seq) {
		return boardDao.QdelBoard(seq);
	}

}
