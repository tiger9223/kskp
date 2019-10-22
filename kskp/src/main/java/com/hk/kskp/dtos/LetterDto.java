package com.hk.kskp.dtos;

import java.util.Date;

public class LetterDto {
  
	private int l_seq;
	private int m_seq;
	private int gu_seq;
	private Date l_regdate;
	private String l_sender;
	private String l_receiver;
	private String l_title;
	private String l_conts;
	
	public LetterDto() {
		super();
	}

	public LetterDto(int l_seq, int m_seq, int gu_seq, Date l_regdate, String l_sender, String l_receiver,
			String l_title, String l_conts) {
		super();
		this.l_seq = l_seq;
		this.m_seq = m_seq;
		this.gu_seq = gu_seq;
		this.l_regdate = l_regdate;
		this.l_sender = l_sender;
		this.l_receiver = l_receiver;
		this.l_title = l_title;
		this.l_conts = l_conts;
	}

	public int getL_seq() {
		return l_seq;
	}

	public void setL_seq(int l_seq) {
		this.l_seq = l_seq;
	}

	public int getM_seq() {
		return m_seq;
	}

	public void setM_seq(int m_seq) {
		this.m_seq = m_seq;
	}

	public int getGu_seq() {
		return gu_seq;
	}

	public void setGu_seq(int gu_seq) {
		this.gu_seq = gu_seq;
	}

	public Date getL_regdate() {
		return l_regdate;
	}

	public void setL_regdate(Date l_regdate) {
		this.l_regdate = l_regdate;
	}

	public String getL_sender() {
		return l_sender;
	}

	public void setL_sender(String l_sender) {
		this.l_sender = l_sender;
	}

	public String getL_receiver() {
		return l_receiver;
	}

	public void setL_receiver(String l_receiver) {
		this.l_receiver = l_receiver;
	}

	public String getL_title() {
		return l_title;
	}

	public void setL_title(String l_title) {
		this.l_title = l_title;
	}

	public String getL_conts() {
		return l_conts;
	}

	public void setL_conts(String l_conts) {
		this.l_conts = l_conts;
	}

	@Override
	public String toString() {
		return "LetterDto [l_seq=" + l_seq + ", m_seq=" + m_seq + ", gu_seq=" + gu_seq + ", l_regdate=" + l_regdate
				+ ", l_sender=" + l_sender + ", l_receiver=" + l_receiver + ", l_title=" + l_title + ", l_conts="
				+ l_conts + "]";
	}
	
}
