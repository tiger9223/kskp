package com.hk.kskp.daos;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.kskp.dtos.ReviewDto;

@Repository
public class ReviewDao implements IReviewDao {

	private String nameSpace="com.hk.review.";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public boolean writeReview(ReviewDto dto) {
		int count=sqlSession.insert(nameSpace+"writereview",dto);
		return count>0?true:false;
	}

	
}
