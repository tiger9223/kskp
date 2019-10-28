package com.hk.kskp.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<LetterDto> letterList(String l_reciver){
		LetterDto dto = new LetterDto(l_reciver);
		return sqlSession.selectList(nameSpace+"letterlist",dto);
	}

	@Override
	public LetterDto letterDetail(int seq) {
		return sqlSession.selectOne(nameSpace+"letterdetail", seq);
	}

	@Override
	public boolean delLetter(int seq) {
		int count = sqlSession.delete(nameSpace+"delLetter", seq);
		return count>0?true:false;
	}

	@Override
	public boolean muldel(String[] seqs) {
		Map<String, String[]>map=new HashMap<>();
		map.put("seqs",seqs);
		int count=sqlSession.delete(nameSpace+"muldel", map);
		return count>0?true:false;
	}
	
}
