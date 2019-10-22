package com.hk.kskp.dtos;

import java.util.Date;

public class GuideDto {
	
	private int gu_seq;
	private String gu_id;
	private String gu_pw;
	private String gu_name;
	private String gu_phone;
	private String gu_email;
	private Date gu_regdate;
	private int gu_appflag;
	private String gu_img;
	private String gu_intro;
	private String gu_career;
	private String gu_bank;
	private String gu_acc;
	
	public GuideDto() {
		super();
	}

	public GuideDto(int gu_seq, String gu_id, String gu_pw, String gu_name, String gu_phone, String gu_email,
			Date gu_regdate, int gu_appflag, String gu_img, String gu_intro, String gu_career, String gu_bank,
			String gu_acc) {
		super();
		this.gu_seq = gu_seq;
		this.gu_id = gu_id;
		this.gu_pw = gu_pw;
		this.gu_name = gu_name;
		this.gu_phone = gu_phone;
		this.gu_email = gu_email;
		this.gu_regdate = gu_regdate;
		this.gu_appflag = gu_appflag;
		this.gu_img = gu_img;
		this.gu_intro = gu_intro;
		this.gu_career = gu_career;
		this.gu_bank = gu_bank;
		this.gu_acc = gu_acc;
	}

	public int getGu_seq() {
		return gu_seq;
	}

	public void setGu_seq(int gu_seq) {
		this.gu_seq = gu_seq;
	}

	public String getGu_id() {
		return gu_id;
	}

	public void setGu_id(String gu_id) {
		this.gu_id = gu_id;
	}

	public String getGu_pw() {
		return gu_pw;
	}

	public void setGu_pw(String gu_pw) {
		this.gu_pw = gu_pw;
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

	public String getGu_email() {
		return gu_email;
	}

	public void setGu_email(String gu_email) {
		this.gu_email = gu_email;
	}

	public Date getGu_regdate() {
		return gu_regdate;
	}

	public void setGu_regdate(Date gu_regdate) {
		this.gu_regdate = gu_regdate;
	}

	public int getGu_appflag() {
		return gu_appflag;
	}

	public void setGu_appflag(int gu_appflag) {
		this.gu_appflag = gu_appflag;
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

	public String getGu_career() {
		return gu_career;
	}

	public void setGu_career(String gu_career) {
		this.gu_career = gu_career;
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

	@Override
	public String toString() {
		return "GuideDto [gu_seq=" + gu_seq + ", gu_id=" + gu_id + ", gu_pw=" + gu_pw + ", gu_name=" + gu_name
				+ ", gu_phone=" + gu_phone + ", gu_email=" + gu_email + ", gu_regdate=" + gu_regdate + ", gu_appflag="
				+ gu_appflag + ", gu_img=" + gu_img + ", gu_intro=" + gu_intro + ", gu_career=" + gu_career
				+ ", gu_bank=" + gu_bank + ", gu_acc=" + gu_acc + "]";
	}
	
	
}
