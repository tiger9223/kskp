package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.ReviewDto;
import com.hk.kskp.dtos.SalaryDto;

public interface IGoodsDao {

	//상품 등록날짜 순으로 전체 조회
	public List<GoodsDto> getAllGoods(int g_seq);
	
	//인기 상품 순으로 조회
	public List<GoodsDto> getBestGoods();
	
	//지역별 상품 순으로 조회
	public List<GoodsDto> getAreaGoods(String g_area);
	
	//상품 상세조회
	public GoodsDto getGoods(int g_seq);
	
	//예약 인원 수 올리기
	public boolean upPeople(int g_seq);
	
	//상품 등록
	public boolean insertGoods(GoodsDto dto);
	
	//상품 승인
	public boolean appGoods(int g_seq);
	
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
