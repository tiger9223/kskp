package com.hk.kskp.daos;

import com.hk.kskp.dtos.ReviewDto;

public interface IReviewDao {
	
	//리뷰작성
		public boolean writeReview(ReviewDto dto);

}
