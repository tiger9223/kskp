package com.hk.kskp.service;

import java.util.List;

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

	@Override
	public int star1(int g_seq) {
		return ReviewDao.star1(g_seq);
	}

	@Override
	public int star2(int g_seq) {
		return ReviewDao.star2(g_seq);
	}

	@Override
	public int star3(int g_seq) {
		return ReviewDao.star3(g_seq);
	}

	@Override
	public int star4(int g_seq) {
		return ReviewDao.star4(g_seq);
	}

	@Override
	public int star5(int g_seq) {
		return ReviewDao.star5(g_seq);
	}

	@Override
	public double staravg(int g_seq) {
		return ReviewDao.staravg(g_seq);
	}

	@Override
	public List<ReviewDto> reviewlist(int g_seq) {
		return ReviewDao.reviewlist(g_seq);
	}

	@Override
	public List<ReviewDto> reviewphoto() {
		return ReviewDao.reviewphoto();
	}

	@Override
	public List<ReviewDto> userReview(int m_seq) {
		return ReviewDao.userReview(m_seq);
	}

	
	@Override
	public List<ReviewDto> guidenoreview(int gu_seq) {
		return ReviewDao.guidenoreview(gu_seq);
	}

	@Override
	public List<ReviewDto> guideYesReview(int gu_seq) {
		return ReviewDao.guideYesReview(gu_seq);
	}
	
	@Override
	public ReviewDto getreview(int r_seq) {
		return ReviewDao.getreview(r_seq);
	}

	@Override
	public boolean insertgreview(ReviewDto dto) {
		return ReviewDao.insertgreview(dto);
	}





	

}
