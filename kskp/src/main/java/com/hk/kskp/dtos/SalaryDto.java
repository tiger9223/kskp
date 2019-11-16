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
	private int s_gcost;
	private int getsal;
	private int getgsal;
	private String gu_name;
	
	public SalaryDto() {
		super();
	}

	public SalaryDto(int s_seq, int gu_seq, int s_cost, Date s_regdate, Date s_aregdate, String s_bank, String s_acc,
			int s_flag, int s_gcost, int getsal, int getgsal, String gu_name) {
		super();
		this.s_seq = s_seq;
		this.gu_seq = gu_seq;
		this.s_cost = s_cost;
		this.s_regdate = s_regdate;
		this.s_aregdate = s_aregdate;
		this.s_bank = s_bank;
		this.s_acc = s_acc;
		this.s_flag = s_flag;
		this.s_gcost = s_gcost;
		this.getsal = getsal;
		this.getgsal = getgsal;
		this.gu_name = gu_name;
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

	public int getS_gcost() {
		return s_gcost;
	}

	public void setS_gcost(int s_gcost) {
		this.s_gcost = s_gcost;
	}

	public int getGetsal() {
		return getsal;
	}

	public void setGetsal(int getsal) {
		this.getsal = getsal;
	}

	public int getGetgsal() {
		return getgsal;
	}

	public void setGetgsal(int getgsal) {
		this.getgsal = getgsal;
	}

	public String getGu_name() {
		return gu_name;
	}

	public void setGu_name(String gu_name) {
		this.gu_name = gu_name;
	}

	@Override
	public String toString() {
		return "SalaryDto [s_seq=" + s_seq + ", gu_seq=" + gu_seq + ", s_cost=" + s_cost + ", s_regdate=" + s_regdate
				+ ", s_aregdate=" + s_aregdate + ", s_bank=" + s_bank + ", s_acc=" + s_acc + ", s_flag=" + s_flag
				+ ", s_gcost=" + s_gcost + ", getsal=" + getsal + ", getgsal=" + getgsal + ", gu_name=" + gu_name + "]";
	}



}
