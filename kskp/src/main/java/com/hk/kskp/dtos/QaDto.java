package com.hk.kskp.dtos;

import java.util.Date;

public class QaDto {

	private int q_seq;
	private int m_seq;
	private String m_name;
	private String q_title;
	private String q_conts;
	private Date q_regdate;
	private int q_flag;
	private String q_ans;
	
	public QaDto() {
		super();
	}

	public QaDto(int q_seq, int m_seq, String m_name, String q_title, String q_conts, Date q_regdate, int q_flag,
			String q_ans) {
		super();
		this.q_seq = q_seq;
		this.m_seq = m_seq;
		this.m_name = m_name;
		this.q_title = q_title;
		this.q_conts = q_conts;
		this.q_regdate = q_regdate;
		this.q_flag = q_flag;
		this.q_ans = q_ans;
	}

	public int getQ_seq() {
		return q_seq;
	}

	public void setQ_seq(int q_seq) {
		this.q_seq = q_seq;
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getQ_title() {
		return q_title;
	}

	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}

	public String getQ_conts() {
		return q_conts;
	}

	public void setQ_conts(String q_conts) {
		this.q_conts = q_conts;
	}

	public Date getQ_regdate() {
		return q_regdate;
	}

	public void setQ_regdate(Date q_regdate) {
		this.q_regdate = q_regdate;
	}

	public int getQ_flag() {
		return q_flag;
	}

	public void setQ_flag(int q_flag) {
		this.q_flag = q_flag;
	}

	public String getQ_ans() {
		return q_ans;
	}

	public void setQ_ans(String q_ans) {
		this.q_ans = q_ans;
	}

	@Override
	public String toString() {
		return "QaDto [q_seq=" + q_seq + ", m_seq=" + m_seq + ", m_name=" + m_name + ", q_title=" + q_title
				+ ", q_conts=" + q_conts + ", q_regdate=" + q_regdate + ", q_flag=" + q_flag + ", q_ans=" + q_ans + "]";
	}

	
	
	
}
