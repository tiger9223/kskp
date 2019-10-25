package com.hk.kskp.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.LetterDto;

@Repository
public class LetterDao implements ILetterDao {

	private String nameSpace="com.hk.letter.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public boolean sendLetter(LetterDto dto) {
		int count = sqlSession.insert(nameSpace+"sendLetter", dto);
		return count>0?true:false;
	}

	@Override
	public List<LetterDto> letterList(){
		return sqlSession.selectList(nameSpace+"letterList");
	}

	@Override
	public LetterDto letterDetail(int seq) {
		return sqlSession.selectOne(nameSpace+"letterDetail", seq);
	}

	@Override
	public boolean delLetter(int seq) {
		int count = sqlSession.delete(nameSpace+"delLetter", seq);
		return count>0?true:false;
	}

}
