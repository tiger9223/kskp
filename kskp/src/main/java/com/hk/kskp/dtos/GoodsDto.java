package com.hk.kskp.dtos;

import java.util.Date;

public class GoodsDto {

	private int g_seq;
	private int gu_seq;
	private String g_area;
	private String g_lan;
	private String g_name;
	private String g_conts;
	private int g_flag;
	private String g_img1;
	private String g_img2;
	private String g_img3;
	private String g_img4;
	private int g_price;
	private int g_people;
	private int g_res;
	private String g_oneline;
	private String g_intro;
	private String g_cos;
	private String g_meet;
	private String g_address;
	private String g_cname;
	private String g_time;
	private String g_cconts;
	private String g_date;
	private Date g_regdate;
	
	public GoodsDto() {
		super();
	}

	public GoodsDto(int g_seq, int gu_seq, String g_area, String g_lan, String g_name, String g_conts, int g_flag,
			String g_img1, String g_img2, String g_img3, String g_img4, int g_price, int g_people, int g_res,
			String g_oneline, String g_intro, String g_cos, String g_meet, String g_address, String g_cname,
			String g_time, String g_cconts, String g_date, Date g_regdate) {
		super();
		this.g_seq = g_seq;
		this.gu_seq = gu_seq;
		this.g_area = g_area;
		this.g_lan = g_lan;
		this.g_name = g_name;
		this.g_conts = g_conts;
		this.g_flag = g_flag;
		this.g_img1 = g_img1;
		this.g_img2 = g_img2;
		this.g_img3 = g_img3;
		this.g_img4 = g_img4;
		this.g_price = g_price;
		this.g_people = g_people;
		this.g_res = g_res;
		this.g_oneline = g_oneline;
		this.g_intro = g_intro;
		this.g_cos = g_cos;
		this.g_meet = g_meet;
		this.g_address = g_address;
		this.g_cname = g_cname;
		this.g_time = g_time;
		this.g_cconts = g_cconts;
		this.g_date = g_date;
		this.g_regdate = g_regdate;
	}

	public int getG_seq() {
		return g_seq;
	}

	public void setG_seq(int g_seq) {
		this.g_seq = g_seq;
	}

	public int getGu_seq() {
		return gu_seq;
	}

	public void setGu_seq(int gu_seq) {
		this.gu_seq = gu_seq;
	}

	public String getG_area() {
		return g_area;
	}

	public void setG_area(String g_area) {
		this.g_area = g_area;
	}

	public String getG_lan() {
		return g_lan;
	}

	public void setG_lan(String g_lan) {
		this.g_lan = g_lan;
	}

	public String getG_name() {
		return g_name;
	}

	public void setG_name(String g_name) {
		this.g_name = g_name;
	}

	public String getG_conts() {
		return g_conts;
	}

	public void setG_conts(String g_conts) {
		this.g_conts = g_conts;
	}

	public int getG_flag() {
		return g_flag;
	}

	public void setG_flag(int g_flag) {
		this.g_flag = g_flag;
	}

	public String getG_img1() {
		return g_img1;
	}

	public void setG_img1(String g_img1) {
		this.g_img1 = g_img1;
	}

	public String getG_img2() {
		return g_img2;
	}

	public void setG_img2(String g_img2) {
		this.g_img2 = g_img2;
	}

	public String getG_img3() {
		return g_img3;
	}

	public void setG_img3(String g_img3) {
		this.g_img3 = g_img3;
	}

	public String getG_img4() {
		return g_img4;
	}

	public void setG_img4(String g_img4) {
		this.g_img4 = g_img4;
	}

	public int getG_price() {
		return g_price;
	}

	public void setG_price(int g_price) {
		this.g_price = g_price;
	}

	public int getG_people() {
		return g_people;
	}

	public void setG_people(int g_people) {
		this.g_people = g_people;
	}

	public int getG_res() {
		return g_res;
	}

	public void setG_res(int g_res) {
		this.g_res = g_res;
	}

	public String getG_oneline() {
		return g_oneline;
	}

	public void setG_oneline(String g_oneline) {
		this.g_oneline = g_oneline;
	}

	public String getG_intro() {
		return g_intro;
	}

	public void setG_intro(String g_intro) {
		this.g_intro = g_intro;
	}

	public String getG_cos() {
		return g_cos;
	}

	public void setG_cos(String g_cos) {
		this.g_cos = g_cos;
	}

	public String getG_meet() {
		return g_meet;
	}

	public void setG_meet(String g_meet) {
		this.g_meet = g_meet;
	}

	public String getG_address() {
		return g_address;
	}

	public void setG_address(String g_address) {
		this.g_address = g_address;
	}

	public String getG_cname() {
		return g_cname;
	}

	public void setG_cname(String g_cname) {
		this.g_cname = g_cname;
	}

	public String getG_time() {
		return g_time;
	}

	public void setG_time(String g_time) {
		this.g_time = g_time;
	}

	public String getG_cconts() {
		return g_cconts;
	}

	public void setG_cconts(String g_cconts) {
		this.g_cconts = g_cconts;
	}

	public String getG_date() {
		return g_date;
	}

	public void setG_date(String g_date) {
		this.g_date = g_date;
	}

	public Date getG_regdate() {
		return g_regdate;
	}

	public void setG_regdate(Date g_regdate) {
		this.g_regdate = g_regdate;
	}

	@Override
	public String toString() {
		return "GoodsDto [g_seq=" + g_seq + ", gu_seq=" + gu_seq + ", g_area=" + g_area + ", g_lan=" + g_lan
				+ ", g_name=" + g_name + ", g_conts=" + g_conts + ", g_flag=" + g_flag + ", g_img1=" + g_img1
				+ ", g_img2=" + g_img2 + ", g_img3=" + g_img3 + ", g_img4=" + g_img4 + ", g_price=" + g_price
				+ ", g_people=" + g_people + ", g_res=" + g_res + ", g_oneline=" + g_oneline + ", g_intro=" + g_intro
				+ ", g_cos=" + g_cos + ", g_meet=" + g_meet + ", g_address=" + g_address + ", g_cname=" + g_cname
				+ ", g_time=" + g_time + ", g_cconts=" + g_cconts + ", g_date=" + g_date + ", g_regdate=" + g_regdate
				+ "]";
	}
	
}
