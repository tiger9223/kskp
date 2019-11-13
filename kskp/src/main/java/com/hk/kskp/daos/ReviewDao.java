package com.hk.kskp.daos;

import java.util.List;

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

	@Override
	public int star1(int g_seq) {
		return sqlSession.selectOne(nameSpace+"star1",g_seq);
	}

	@Override
	public int star2(int g_seq) {
		return sqlSession.selectOne(nameSpace+"star2",g_seq);
	}

	@Override
	public int star3(int g_seq) {
		return sqlSession.selectOne(nameSpace+"star3",g_seq);
	}

	@Override
	public int star4(int g_seq) {
		return sqlSession.selectOne(nameSpace+"star4",g_seq);
	}

	@Override
	public int star5(int g_seq) {
		return sqlSession.selectOne(nameSpace+"star5",g_seq);
	}

	@Override
	public double staravg(int g_seq) {
		String a = sqlSession.selectOne(nameSpace+"staravg",g_seq);
		if(a == null) {
			a = "0";
		}
		return Double.parseDouble(a);
	}

	@Override
	public List<ReviewDto> reviewlist(int g_seq) {
		return sqlSession.selectList(nameSpace+"reviewlist", g_seq);
	}

	
}
