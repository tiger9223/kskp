package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.PayDto;
import com.hk.kskp.dtos.ReviewDto;
import com.hk.kskp.dtos.SalaryDto;

public interface IGoodsDao {

	//상품 등록날짜 순으로 전체 조회
	public List<GoodsDto> getAllGoods();
	
	//인기 상품 순으로 조회
	public List<GoodsDto> getbestGoods();
	
	//지역별 상품 순으로 조회
	public List<GoodsDto> getAreaGoods(String g_area);
	
	//상품 상세조회
	public GoodsDto getGoods(int seq);
	
	//상품 등록
	public boolean insertGoods(GoodsDto dto);
	
	//상품 수정
	public boolean updateGoods(GoodsDto dto);
	
	//후기 등록
	public boolean insertReview(ReviewDto dto);
	
	//답변 등록
	public boolean insertAnswer(ReviewDto dto);
	
	//한 상품의 후기 전체가져오기
	public List<ReviewDto> getAllReview(int seq);
	
	//답글 달지 않은 후기가져오기
	public List<ReviewDto> getNoReview();
	
	//답변한 후기
	public List<ReviewDto> getYesReview();

	//일정 관리
	public List<GoodsDto> getCal(int seq);
	
}
