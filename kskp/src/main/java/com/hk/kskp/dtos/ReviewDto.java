package com.hk.kskp.dtos;

import java.sql.Date;

public class ReviewDto {

	
	private int r_seq;
	private int m_seq;
	private int g_seq;
	private String r_conts;
	private Date r_regdate;
	private String r_img;
	private int r_star;
	private String r_ans;
	private int r_guflag;
	private int r_mflag;

	public ReviewDto() {
		super();
	}

	public ReviewDto(int r_seq, int m_seq, int g_seq, String r_conts, Date r_regdate, String r_img, int r_star,
			String r_ans, int r_guflag, int r_mflag) {
		super();
		this.r_seq = r_seq;
		this.m_seq = m_seq;
		this.g_seq = g_seq;
		this.r_conts = r_conts;
		this.r_regdate = r_regdate;
		this.r_img = r_img;
		this.r_star = r_star;
		this.r_ans = r_ans;
		this.r_guflag = r_guflag;
		this.r_mflag = r_mflag;
	}

	public int getR_seq() {
		return r_seq;
	}

	public void setR_seq(int r_seq) {
		this.r_seq = r_seq;
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	public int getG_seq() {
		return g_seq;
	}

	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
	}

	public String getR_conts() {
		return r_conts;
	}

	public void setR_conts(String r_conts) {
		this.r_conts = r_conts;
	}

	public Date getR_regdate() {
		return r_regdate;
	}

	public void setR_regdate(Date r_regdate) {
		this.r_regdate = r_regdate;
	}

	public String getR_img() {
		return r_img;
	}

	public void setR_img(String r_img) {
		this.r_img = r_img;
	}

	public int getR_star() {
		return r_star;
	}

	public void setR_star(int r_star) {
		this.r_star = r_star;
	}

	public String getR_ans() {
		return r_ans;
	}

	public void setR_ans(String r_ans) {
		this.r_ans = r_ans;
	}

	public int getR_guflag() {
		return r_guflag;
	}

	public void setR_guflag(int r_guflag) {
		this.r_guflag = r_guflag;
	}

	public int getR_falg() {
		return r_mflag;
	}

	public void setR_falg(int r_mflag) {
		this.r_mflag = r_mflag;
	}

	@Override
	public String toString() {
		return "Review [r_seq=" + r_seq + ", m_seq=" + m_seq + ", g_seq=" + g_seq + ", r_conts=" + r_conts
				+ ", r_regdate=" + r_regdate + ", r_img=" + r_img + ", r_star=" + r_star + ", r_ans=" + r_ans
				+ ", r_guflag=" + r_guflag + ", r_mflag=" + r_mflag + "]";
	}
	
	
	
}
