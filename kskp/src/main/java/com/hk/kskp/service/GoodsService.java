package com.hk.kskp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.kskp.daos.IGoodsDao;
import com.hk.kskp.dtos.GoodsDto;
import com.hk.kskp.dtos.ReviewDto;

@Service
public class GoodsService implements IGoodsService{

	@Autowired
	private IGoodsDao GoodsDao;
	
	@Override
	public List<GoodsDto> getAllGoods(int g_seq) {
		return GoodsDao.getAllGoods(g_seq);
	}

	@Override
	public List<GoodsDto> getBestGoods() {
		return GoodsDao.getBestGoods();
	}

	@Override
	public List<GoodsDto> getAreaGoods(String g_area) {
		return GoodsDao.getAreaGoods(g_area);
	}

	@Override
	public GoodsDto getGoods(int seq) {
		return GoodsDao.getGoods(seq);
	}

	@Override
	public boolean insertGoods(GoodsDto dto) {
		return GoodsDao.insertGoods(dto);
	}
	
	@Override
	public boolean appGoods(int g_seq) {
		return GoodsDao.appGoods(g_seq);
	}

	@Override
	public boolean updateGoods(GoodsDto dto) {
		return GoodsDao.updateGoods(dto);
	}

	@Override
	public boolean insertReview(ReviewDto dto) {
		return GoodsDao.insertReview(dto);
	}

	@Override
	public boolean delReview(ReviewDto dto) {
		return GoodsDao.delReview(dto);
	}

	@Override
	public boolean updateReview(ReviewDto dto) {
		return GoodsDao.updateReview(dto);
	}

	@Override
	public List<ReviewDto> getreview(int g_seq) {
		return GoodsDao.getreview(g_seq);
	}

	@Override
	public boolean insertAnswer(ReviewDto dto) {
		return GoodsDao.insertAnswer(dto);
	}

	@Override
	public List<ReviewDto> getAllReview(int r_seq) {
		return GoodsDao.getAllReview(r_seq);
	}

	@Override
	public List<ReviewDto> getNoReview(int r_seq) {
		return GoodsDao.getNoReview(r_seq);
	}

	@Override
	public List<ReviewDto> getYesReview(int r_seq) {
		return GoodsDao.getYesReview(r_seq);
	}

	@Override
	public List<GoodsDto> getCal(int seq) {
		return GoodsDao.getCal(seq);
	}

	

}
