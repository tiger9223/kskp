package com.hk.kskp.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<GoodsDto> getAllGoods() {
		return sqlSession.selectList(nameSpace+"getallgoods" );
	}
	@Override//상품 등록날짜 순으로 전체 조회
	public List<GoodsDto> getAllGoods1(String pnum,String kokey) {
		Map<String,String> map = new HashMap<>();
		map.put("kokey", kokey);
		map.put("pnum", pnum);
		return sqlSession.selectList(nameSpace+"getallgoods1",map);
	}

	@Override//인기 상품 순으로 조회
	public List<GoodsDto> getBestGoods() {
		return sqlSession.selectList(nameSpace+"getbestgoods");
	}

	@Override//지역별 상품 순으로 조회
	public List<GoodsDto> getAreaGoods(String g_area) {
		return sqlSession.selectList(nameSpace+"getareagoods",g_area);
	}

	@Override//가이드 상품관리 조회
	public List<GoodsDto> guideGoods(int gu_seq) {
		return sqlSession.selectList(nameSpace+"guidegoods",gu_seq);
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

	@Override//승인할 상품목록 가져오기 
	public List<GoodsDto> appGoodsList() {
		return sqlSession.selectList(nameSpace+"appgoodslist");
	}
	
	@Override//상품 승인
	public boolean appGoods(int g_seq) {
		int count = sqlSession.update(nameSpace+"appgoods", g_seq);
		return count>0?true:false;
	}
	
	@Override//상품 승인취소
	public boolean appNoGoods(int g_seq) {
		int count = sqlSession.update(nameSpace+"appnogoods", g_seq);
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

	@Override //카테고리별 상품 찾기
	public List<GoodsDto> searchcategory(String cate, String pnum,String kokey) {
		Map<String,String> map = new HashMap<>();
		map.put("cate", cate);
		map.put("pnum", pnum);
		map.put("kokey", kokey);
		return sqlSession.selectList(nameSpace+"searchcategory", map);
	}

	@Override
	public int gcount(String kokey) {
		int gcount = sqlSession.selectOne(nameSpace+"gcount",kokey);
		return gcount;
	}

	@Override
	public int gccount(String cate,String kokey) {
		Map<String,String> map = new HashMap<>();
		map.put("cate", cate);
		map.put("kokey", kokey);
		int gccount = sqlSession.selectOne(nameSpace+"gccount", map);
		return gccount;
	}

	@Override
	public int gcount2(String kokey, String date) {
		Map<String,String> map = new HashMap<>();
		map.put("kokey", kokey);
		map.put("date", date);
		int gcount = sqlSession.selectOne(nameSpace+"gcount2",map);
		return gcount;
	}

	@Override
	public int gccount2(String cate,String kokey, String date) {
		Map<String,String> map = new HashMap<>();
		map.put("cate", cate);
		map.put("kokey", kokey);
		map.put("date", date);
		int gccount = sqlSession.selectOne(nameSpace+"gccount2", map);
		return gccount;
	}

	
	@Override//상품 등록날짜 순으로 전체 조회
	public List<GoodsDto> getAllGoods2(String pnum,String kokey, String date) {
		Map<String,String> map = new HashMap<>();
		map.put("kokey", kokey);
		map.put("pnum", pnum);
		map.put("date", date);
		System.out.println("all:"+map);
		return sqlSession.selectList(nameSpace+"getallgoods2",map);
	}


	@Override //카테고리별 상품 찾기
	public List<GoodsDto> searchcategory2(String cate, String pnum,String kokey, String date ) {
		Map<String,String> map = new HashMap<>();
		map.put("cate", cate);
		map.put("pnum", pnum);
		map.put("kokey", kokey);
		map.put("date", date);
		System.out.println("cate:"+map);
		return sqlSession.selectList(nameSpace+"searchcategory2", map);
	}


}
