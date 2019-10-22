package com.hk.kskp.dtos;

public class SalaryDto {
	
	private int s_seq;
	private int g_seq;
	private int s_cost;
	private String s_date;
	private String s_name;
	private String s_bank;
	private String s_acc;
	private int s_flag;
	
	public SalaryDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getS_seq() {
		return s_seq;
	}

	public void setS_seq(int s_seq) {
		this.s_seq = s_seq;
	}

	public int getG_seq() {
		return g_seq;
	}

	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
	}

	public int getS_cost() {
		return s_cost;
	}

	public void setS_cost(int s_cost) {
		this.s_cost = s_cost;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_bank() {
		return s_bank;
	}

	public void setS_bank(String s_bank) {
		this.s_bank = s_bank;
	}

	public String getS_acc() {
		return s_acc;
	}

	public void setS_acc(String s_acc) {
		this.s_acc = s_acc;
	}

	public int getS_flag() {
		return s_flag;
	}

	public void setS_flag(int s_flag) {
		this.s_flag = s_flag;
	}

	public SalaryDto(int s_seq, int g_seq, int s_cost, String s_date, String s_name, String s_bank, String s_acc,
			int s_flag) {
		super();
		this.s_seq = s_seq;
		this.g_seq = g_seq;
		this.s_cost = s_cost;
		this.s_date = s_date;
		this.s_name = s_name;
		this.s_bank = s_bank;
		this.s_acc = s_acc;
		this.s_flag = s_flag;
	}

	@Override
	public String toString() {
		return "SalaryDto [s_seq=" + s_seq + ", g_seq=" + g_seq + ", s_cost=" + s_cost + ", s_date=" + s_date
				+ ", s_name=" + s_name + ", s_bank=" + s_bank + ", s_acc=" + s_acc + ", s_flag=" + s_flag + "]";
	}
	
	
	

}
