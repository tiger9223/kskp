package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.ReviewDto;
import com.hk.kskp.dtos.SalaryDto;

public interface IGoodsDao {

	//상품 등록날짜 순으로 전체 조회
	public List<GoodsDto> getAllGoods();
	
	public List<GoodsDto> getAllGoods1(String pnum, String kokey);
	//카테고리별 상품 찾기
	public List<GoodsDto> searchcategory(String cate, String pnum, String kokey);
	
	
	public List<GoodsDto> getAllGoods2(String pnum, String kokey, String date);
	//카테고리별 상품 찾기
	public List<GoodsDto> searchcategory2(String cate, String pnum, String kokey,String date);
	
	public int gcount2(String kokey,String date);
	
	public int gccount2(String cate,String kokey,String date);
	//인기 상품 순으로 조회
	public List<GoodsDto> getBestGoods();
	
	public int gcount(String kokey);
	
	public int gccount(String cate,String kokey);
	
	//지역별 상품 순으로 조회
	public List<GoodsDto> getAreaGoods(String g_area);
	
	//가이드 상품관리 조회
	public List<GoodsDto> guideGoods(int gu_seq);
	
	//상품 상세조회
	public GoodsDto getGoods(int g_seq);
	
	//예약 인원 수 올리기
	public boolean upPeople(int g_seq);
	
	//상품 등록
	public boolean insertGoods(GoodsDto dto);
	
	//승인할 상품 목록 불러오기
	public List<GoodsDto> appGoodsList();
	
	//상품 승인
	public boolean appGoods(int g_seq);
	
	//상품 승인취소
	public boolean appNoGoods(int g_seq);
	
	//상품 수정
	public boolean updateGoods(GoodsDto dto);
	
	//후기 등록
	public boolean insertReview(ReviewDto dto);
	
	//후기 삭제
	public boolean delReview(ReviewDto dto);
	
	//후기 수정
	public boolean updateReview(ReviewDto dto);
	
	//답변 등록
	public boolean insertAnswer(ReviewDto dto);

	
	//한 상품의 후기 전체가져오기
	public List<ReviewDto> getAllReview(int r_seq);
	
	//답글 달지 않은 후기가져오기
	public List<ReviewDto> getNoReview(int r_seq);
	
	//답변한 후기
	public List<ReviewDto> getYesReview(int r_seq);

	//일정 관리
	public List<GoodsDto> getCal(int gu_seq);
	
}
