package com.hk.kskp.daos;

import java.util.List;

import com.hk.kskp.dtos.ReviewDto;

public interface IReviewDao {
	
	//리뷰작성
		public boolean writeReview(ReviewDto dto);
		
	//별점별 인원수 조회	
		public int star1(int g_seq);
	
	//별점별 인원수 조회	
		public int star2(int g_seq);
		
	//별점별 인원수 조회	
		public int star3(int g_seq);
		
	//별점별 인원수 조회	
		public int star4(int g_seq);	
		
	//별점별 인원수 조회	
		public int star5(int g_seq);
		
	//별점 평균
		public double staravg(int g_seq);
		
	//상품 페이지로 리뷰빼기
		public List<ReviewDto> reviewlist(int g_seq);

}
