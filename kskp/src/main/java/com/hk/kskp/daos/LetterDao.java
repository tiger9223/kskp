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
	public List<LetterDto> letterList(String l_receiver,String pnum){
		Map<String, String> map=new HashMap<>();
		map.put("l_receiver",l_receiver);
		map.put("pnum",pnum);
		return sqlSession.selectList(nameSpace+"letterlist",map);
	}
	
	@Override
	public int getPcount() {
		int pcount =  sqlSession.selectOne(nameSpace+"pcount");
		return pcount;
	}
	
	
	@Override
	public List<LetterDto> sendletterList(String l_sender,String pnum){
		Map<String, String> map=new HashMap<>();
		map.put("l_sender",l_sender);
		map.put("pnum",pnum);
		return sqlSession.selectList(nameSpace+"sendletterlist",map);
	}
	
	@Override
	public LetterDto letterDetail(int seq) {
		return sqlSession.selectOne(nameSpace+"letterdetail", seq);
	}

	@Override
	public LetterDto sendletterDetail(int seq) {
		return sqlSession.selectOne(nameSpace+"sendletterdetail", seq);
	}

	@Override
	public boolean senddelflag(int seq) {
		int count=sqlSession.update(nameSpace+"senddelflag",seq);
		return count>0?true:false;
	}

	@Override
	public boolean recdelflag(int seq) {
		int count=sqlSession.update(nameSpace+"recdelflag",seq);
		return count>0?true:false;
	}

	@Override
	public boolean sendmuldel(String[] seqs) {
		Map<String,String[]>map=new HashMap<>();
		map.put("seqs",seqs);
		int count=sqlSession.update(nameSpace+"sendmuldel", map);
		return count>0?true:false;
	}

	@Override
	public boolean recmuldel(String[] seqs) {
		Map<String,String[]>map=new HashMap<>();
		map.put("seqs",seqs);
		int count=sqlSession.update(nameSpace+"recmuldel", map);
		return count>0?true:false;
	}
	
	@Override
	public void delletter(LetterDto dto) {
		sqlSession.delete(nameSpace+"delletter",dto);
	}
	
}
