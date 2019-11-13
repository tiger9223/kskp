package com.hk.kskp.dtos;

import com.google.cloud.Date;

public class PayDto {
	
	private int p_seq;
	private int g_seq;
	private int m_seq;
	private int p_cost;
	private int p_num;
	private String p_date;
	private String p_name;
	private String p_conts;
	private String p_img;
	private String g_thumbimg;
	private String p_meet;
	private int p_flag;
	private Date p_regdate;
	private int p_rflag;
	private String m_email;
	private String m_name;
	
	public PayDto() {
		super();
	}

	public PayDto(int p_seq, int g_seq, int m_seq, int p_cost, int p_num, String p_date, String p_name, String p_conts,
			String p_img, String g_thumbimg, String p_meet, int p_flag, Date p_regdate, int p_rflag, String m_email,
			String m_name) {
		super();
		this.p_seq = p_seq;
		this.g_seq = g_seq;
		this.m_seq = m_seq;
		this.p_cost = p_cost;
		this.p_num = p_num;
		this.p_date = p_date;
		this.p_name = p_name;
		this.p_conts = p_conts;
		this.p_img = p_img;
		this.g_thumbimg = g_thumbimg;
		this.p_meet = p_meet;
		this.p_flag = p_flag;
		this.p_regdate = p_regdate;
		this.p_rflag = p_rflag;
		this.m_email = m_email;
		this.m_name = m_name;
	}

	public PayDto(int p_seq, int g_seq, int m_seq, int p_cost, int p_num, String p_date, String p_name,
			int p_flag) {
		super();
		this.p_seq = p_seq;
		this.g_seq = g_seq;
		this.m_seq = m_seq;
		this.p_cost = p_cost;
		this.p_num = p_num;
		this.p_date = p_date;
		this.p_name = p_name;
		this.p_flag = p_flag;
	}
	
	public int getP_seq() {
		return p_seq;
	}

	public void setP_seq(int p_seq) {
		this.p_seq = p_seq;
	}

	public int getG_seq() {
		return g_seq;
	}

	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	public int getP_cost() {
		return p_cost;
	}

	public void setP_cost(int p_cost) {
		this.p_cost = p_cost;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_conts() {
		return p_conts;
	}

	public void setP_conts(String p_conts) {
		this.p_conts = p_conts;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getG_thumbimg() {
		return g_thumbimg;
	}

	public void setG_thumbimg(String g_thumbimg) {
		this.g_thumbimg = g_thumbimg;
	}

	public String getP_meet() {
		return p_meet;
	}

	public void setP_meet(String p_meet) {
		this.p_meet = p_meet;
	}

	public int getP_flag() {
		return p_flag;
	}

	public void setP_flag(int p_flag) {
		this.p_flag = p_flag;
	}

	public Date getP_regdate() {
		return p_regdate;
	}

	public void setP_regdate(Date p_regdate) {
		this.p_regdate = p_regdate;
	}

	public int getP_rflag() {
		return p_rflag;
	}

	public void setP_rflag(int p_rflag) {
		this.p_rflag = p_rflag;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	@Override
	public String toString() {
		return "PayDto [p_seq=" + p_seq + ", g_seq=" + g_seq + ", m_seq=" + m_seq + ", p_cost=" + p_cost + ", p_num="
				+ p_num + ", p_date=" + p_date + ", p_name=" + p_name + ", p_conts=" + p_conts + ", p_img=" + p_img
				+ ", g_thumbimg=" + g_thumbimg + ", p_meet=" + p_meet + ", p_flag=" + p_flag + ", p_regdate="
				+ p_regdate + ", p_rflag=" + p_rflag + ", m_email=" + m_email + ", m_name=" + m_name + "]";
	}

	
}
