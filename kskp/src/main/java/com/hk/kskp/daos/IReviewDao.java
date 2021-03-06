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
		
	//메인 페이지로 사진빼기
		public List<ReviewDto> reviewphoto();
	
	//회원이 남긴 후기글 보기
		public List<ReviewDto> userReview(int m_seq);
		
	//가이드가 답글 안단 리뷰 
		public List<ReviewDto> guidenoreview(int gu_seq);
		
	//가이드가 답글 단 리뷰 
		public List<ReviewDto> guideYesReview(int gu_seq);
		
	//가이드 답글 달 글 찾기
		public ReviewDto getreview(int r_seq);
		
	//가이드 답글달기
		public boolean insertgreview(ReviewDto dto);
}
