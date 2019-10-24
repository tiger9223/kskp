package com.hk.kskp.daos;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.ReviewDto;

@Repository
public class GoodsDao implements IGoodsDao{
	
	private String nameSpace = "com.hk.goods.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override//상품 등록날짜 순으로 전체 조회
	public List<GoodsDto> getAllGoods(int g_seq) {
		return sqlSession.selectList(nameSpace+"getallgoods",g_seq);
	}

	@Override//인기 상품 순으로 조회
	public List<GoodsDto> getBestGoods() {
		return sqlSession.selectList(nameSpace+"getbestgoods");
	}

	@Override//지역별 상품 순으로 조회
	public List<GoodsDto> getAreaGoods(String g_area) {
		return sqlSession.selectList(nameSpace+"getareagoods",g_area);
	}

	@Override//상품 상세조회
	public GoodsDto getGoods(int seq) {
		return sqlSession.selectOne(nameSpace+"getgoods",seq);
	}

	@Override//상품 등록
	public boolean insertGoods(GoodsDto dto) {
		int count = sqlSession.insert(nameSpace+"insertgoods",dto);
		return count>0?true:false;
	}

	@Override//상품 승인
	public boolean appGoods(int g_seq) {
		int count = sqlSession.update(nameSpace+"appgoods", g_seq);
		return count>0?true:false;
	}
	
	@Override//상품 수정
	public boolean updateGoods(GoodsDto dto) {
		int count = sqlSession.update(nameSpace+"updategoods",dto);
		return count>0?true:false;
	}

	@Override//후기 등록
	public boolean insertReview(ReviewDto dto) {
		int count = sqlSession.insert(nameSpace+"insertreview",dto);
		return count>0?true:false;
	}
	
	@Override//후기 삭제
	public boolean delReview(ReviewDto dto) {
		int count = sqlSession.delete(nameSpace+"delreview",dto);
		return count>0?true:false;
	}

	@Override//후기 수정
	public boolean updateReview(ReviewDto dto) {
		int count = sqlSession.update(nameSpace+"updatereview",dto);
		return count>0?true:false;
	}

	@Override//답변 등록
	public boolean insertAnswer(ReviewDto dto) {
		int count = sqlSession.update(nameSpace+"insertanswer",dto);
		return count>0?true:false;
	}

	@Override//한 상품의 후기 전체가져오기
	public List<ReviewDto> getAllReview(int r_seq) {
		return sqlSession.selectList(nameSpace+"getallreview",r_seq);
	}

	@Override//답글 달지 않은 후기가져오기
	public List<ReviewDto> getNoReview(int r_seq) {
		return sqlSession.selectList(nameSpace+"getnoreview",r_seq);
	}

	@Override//답변한 후기
	public List<ReviewDto> getYesReview(int r_seq) {
		return sqlSession.selectList(nameSpace+"getyesreview",r_seq);
	}

	@Override//일정 관리
	public List<GoodsDto> getCal(int g_seq) {
		return sqlSession.selectList(nameSpace+"getcal",g_seq);
	}

	@Override//예약 인원 수 올리기
	public boolean upPeople(int g_seq) {
		int count = sqlSession.update(nameSpace+"uppeople",g_seq);
		return count>0?true:false;
	}

	


}
