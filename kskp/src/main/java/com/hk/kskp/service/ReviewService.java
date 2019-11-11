package com.hk.kskp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.IReviewDao;
import com.hk.kskp.dtos.ReviewDto;

@Service
public class ReviewService implements IReviewService{
	
	@Autowired
	private IReviewDao ReviewDao;

	@Override
	public boolean writeReview(ReviewDto dto) { 
		return ReviewDao.writeReview(dto);
	}

}
