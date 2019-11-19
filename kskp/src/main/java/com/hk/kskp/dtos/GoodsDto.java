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
	private int g_price;
	private int g_people;
	private int g_res;
	private String g_oneline;
	private String g_intro;
	private String g_cos;
	private String g_address;
	private String g_category;
	private String g_time;
	private String g_info;
	private String g_date;
	private Date g_regdate;
	private String g_thumbimg;
	private String g_mtime;
	private String g_lat;
	private String g_lng;
	private String gu_email;
	private String gu_name;
	private String gu_phone;
	private String gu_img;
	private String gu_intro;
	private String gu_bank;
	private String gu_acc;
	private int r_star;
	
	public GoodsDto() {
		super();
	}

	public GoodsDto(int g_seq, int gu_seq, String g_area, String g_lan, String g_name, String g_conts, int g_flag,
			String g_img1, int g_price, int g_people, int g_res, String g_oneline, String g_intro, String g_cos,
			String g_address, String g_category, String g_time, String g_info, String g_date, Date g_regdate,
			String g_thumbimg, String g_mtime, String g_lat, String g_lng, String gu_email, String gu_name,
			String gu_phone, String gu_img, String gu_intro, String gu_bank, String gu_acc, int r_star) {
		super();
		this.g_seq = g_seq;
		this.gu_seq = gu_seq;
		this.g_area = g_area;
		this.g_lan = g_lan;
		this.g_name = g_name;
		this.g_conts = g_conts;
		this.g_flag = g_flag;
		this.g_img1 = g_img1;
		this.g_price = g_price;
		this.g_people = g_people;
		this.g_res = g_res;
		this.g_oneline = g_oneline;
		this.g_intro = g_intro;
		this.g_cos = g_cos;
		this.g_address = g_address;
		this.g_category = g_category;
		this.g_time = g_time;
		this.g_info = g_info;
		this.g_date = g_date;
		this.g_regdate = g_regdate;
		this.g_thumbimg = g_thumbimg;
		this.g_mtime = g_mtime;
		this.g_lat = g_lat;
		this.g_lng = g_lng;
		this.gu_email = gu_email;
		this.gu_name = gu_name;
		this.gu_phone = gu_phone;
		this.gu_img = gu_img;
		this.gu_intro = gu_intro;
		this.gu_bank = gu_bank;
		this.gu_acc = gu_acc;
		this.r_star = r_star;
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

	public String getG_address() {
		return g_address;
	}

	public void setG_address(String g_address) {
		this.g_address = g_address;
	}

	public String getG_category() {
		return g_category;
	}

	public void setG_category(String g_category) {
		this.g_category = g_category;
	}

	public String getG_time() {
		return g_time;
	}

	public void setG_time(String g_time) {
		this.g_time = g_time;
	}

	public String getG_info() {
		return g_info;
	}

	public void setG_info(String g_info) {
		this.g_info = g_info;
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

	public String getG_thumbimg() {
		return g_thumbimg;
	}

	public void setG_thumbimg(String g_thumbimg) {
		this.g_thumbimg = g_thumbimg;
	}

	public String getG_mtime() {
		return g_mtime;
	}

	public void setG_mtime(String g_mtime) {
		this.g_mtime = g_mtime;
	}

	public String getG_lat() {
		return g_lat;
	}

	public void setG_lat(String g_lat) {
		this.g_lat = g_lat;
	}

	public String getG_lng() {
		return g_lng;
	}

	public void setG_lng(String g_lng) {
		this.g_lng = g_lng;
	}

	public String getGu_email() {
		return gu_email;
	}

	public void setGu_email(String gu_email) {
		this.gu_email = gu_email;
	}

	public String getGu_name() {
		return gu_name;
	}

	public void setGu_name(String gu_name) {
		this.gu_name = gu_name;
	}

	public String getGu_phone() {
		return gu_phone;
	}

	public void setGu_phone(String gu_phone) {
		this.gu_phone = gu_phone;
	}

	public String getGu_img() {
		return gu_img;
	}

	public void setGu_img(String gu_img) {
		this.gu_img = gu_img;
	}

	public String getGu_intro() {
		return gu_intro;
	}

	public void setGu_intro(String gu_intro) {
		this.gu_intro = gu_intro;
	}

	public String getGu_bank() {
		return gu_bank;
	}

	public void setGu_bank(String gu_bank) {
		this.gu_bank = gu_bank;
	}

	public String getGu_acc() {
		return gu_acc;
	}

	public void setGu_acc(String gu_acc) {
		this.gu_acc = gu_acc;
	}

	public int getR_star() {
		return r_star;
	}

	public void setR_star(int r_star) {
		this.r_star = r_star;
	}

	@Override
	public String toString() {
		return "GoodsDto [g_seq=" + g_seq + ", gu_seq=" + gu_seq + ", g_area=" + g_area + ", g_lan=" + g_lan
				+ ", g_name=" + g_name + ", g_conts=" + g_conts + ", g_flag=" + g_flag + ", g_img1=" + g_img1
				+ ", g_price=" + g_price + ", g_people=" + g_people + ", g_res=" + g_res + ", g_oneline=" + g_oneline
				+ ", g_intro=" + g_intro + ", g_cos=" + g_cos + ", g_address=" + g_address + ", g_category="
				+ g_category + ", g_time=" + g_time + ", g_info=" + g_info + ", g_date=" + g_date + ", g_regdate="
				+ g_regdate + ", g_thumbimg=" + g_thumbimg + ", g_mtime=" + g_mtime + ", g_lat=" + g_lat + ", g_lng="
				+ g_lng + ", gu_email=" + gu_email + ", gu_name=" + gu_name + ", gu_phone=" + gu_phone + ", gu_img="
				+ gu_img + ", gu_intro=" + gu_intro + ", gu_bank=" + gu_bank + ", gu_acc=" + gu_acc + ", r_star="
				+ r_star + "]";
	}


	

	
}
