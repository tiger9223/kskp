package com.hk.kskp.dtos;

import java.util.Date;

public class NoticeDto {

	private int n_seq;
	private int m_seq;
	private String n_title;
	private String n_conts;
	private Date n_regdate;
	private int n_count;
	
	public NoticeDto() {
		super();
	}

	public int getN_seq() {
		return n_seq;
	}

	public void setN_seq(int n_seq) {
		this.n_seq = n_seq;
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_conts() {
		return n_conts;
	}

	public void setN_conts(String n_conts) {
		this.n_conts = n_conts;
	}

	public Date getN_regdate() {
		return n_regdate;
	}

	public void setN_regdate(Date n_regdate) {
		this.n_regdate = n_regdate;
	}

	public int getN_count() {
		return n_count;
	}

	public void setN_count(int n_count) {
		this.n_count = n_count;
	}

	public NoticeDto(int n_seq, int m_seq, String n_title, String n_conts, Date n_regdate, int n_count) {
		super();
		this.n_seq = n_seq;
		this.m_seq = m_seq;
		this.n_title = n_title;
		this.n_conts = n_conts;
		this.n_regdate = n_regdate;
		this.n_count = n_count;
	}

	@Override
	public String toString() {
		return "NoticeDto [n_seq=" + n_seq + ", m_seq=" + m_seq + ", n_title=" + n_title + ", n_conts=" + n_conts
				+ ", n_regdate=" + n_regdate + ", n_count=" + n_count + "]";
	}
	
	
	
}
