package com.hk.kskp.dtos;

import java.util.Date;

public class SalaryDto {
	
	private int s_seq;
	private int gu_seq;
	private int s_cost;
	private Date s_regdate;
	private Date s_aregdate;
	private String s_bank;
	private String s_acc;
	private int s_flag;
	
	public SalaryDto() {
		super();
	}

	public SalaryDto(int s_seq, int gu_seq, int s_cost, Date s_regdate, Date s_aregdate, String s_bank, String s_acc,
			int s_flag) {
		super();
		this.s_seq = s_seq;
		this.gu_seq = gu_seq;
		this.s_cost = s_cost;
		this.s_regdate = s_regdate;
		this.s_aregdate = s_aregdate;
		this.s_bank = s_bank;
		this.s_acc = s_acc;
		this.s_flag = s_flag;
	}

	public int getS_seq() {
		return s_seq;
	}

	public void setS_seq(int s_seq) {
		this.s_seq = s_seq;
	}

	public int getGu_seq() {
		return gu_seq;
	}

	public void setGu_seq(int gu_seq) {
		this.gu_seq = gu_seq;
	}

	public int getS_cost() {
		return s_cost;
	}

	public void setS_cost(int s_cost) {
		this.s_cost = s_cost;
	}

	public Date getS_regdate() {
		return s_regdate;
	}

	public void setS_regdate(Date s_regdate) {
		this.s_regdate = s_regdate;
	}

	public Date getS_aregdate() {
		return s_aregdate;
	}

	public void setS_aregdate(Date s_aregdate) {
		this.s_aregdate = s_aregdate;
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

	@Override
	public String toString() {
		return "SalaryDto [s_seq=" + s_seq + ", gu_seq=" + gu_seq + ", s_cost=" + s_cost + ", s_regdate=" + s_regdate
				+ ", s_aregdate=" + s_aregdate + ", s_bank=" + s_bank + ", s_acc=" + s_acc + ", s_flag=" + s_flag + "]";
	}

	
	

}
