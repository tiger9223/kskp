package com.hk.kskp.dtos;

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
	private String p_meet;
	private int p_flag;
	
	public PayDto() {
		super();
	}

	public PayDto(int p_seq, int g_seq, int m_seq, int p_cost, int p_num, String p_date, String p_name, String p_conts,
			String p_img, String p_meet, int p_flag) {
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
		this.p_meet = p_meet;
		this.p_flag = p_flag;
	}

	
	
	public PayDto(int p_seq, int g_seq, int m_seq, int p_cost, int p_num, String p_date, String p_name, String p_img,
			int p_flag) {
		super();
		this.p_seq = p_seq;
		this.g_seq = g_seq;
		this.m_seq = m_seq;
		this.p_cost = p_cost;
		this.p_num = p_num;
		this.p_date = p_date;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_flag = p_flag;
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

	@Override
	public String toString() {
		return "PayDto [p_seq=" + p_seq + ", g_seq=" + g_seq + ", m_seq=" + m_seq + ", p_cost=" + p_cost + ", p_num="
				+ p_num + ", p_date=" + p_date + ", p_name=" + p_name + ", p_conts=" + p_conts + ", p_img=" + p_img
				+ ", p_meet=" + p_meet + ", p_flag=" + p_flag + "]";
	}

	
	

}
