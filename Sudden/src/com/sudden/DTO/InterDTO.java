package com.sudden.DTO;

import java.sql.Date;

public class InterDTO {

	private int itr_seq;	//���ɼ���
	private int seq;		//��ǰ����
	private Date itr_date;	//���ɳ�¥
	private String memo;	//���ɸ޸�
	private String id;		//�ۼ��ھ��̵�
	
	public InterDTO(int itr_seq, int seq, Date itr_date, String memo, String id) {
		super();
		this.itr_seq = itr_seq;
		this.seq = seq;
		this.itr_date = itr_date;
		this.memo = memo;
		this.id = id;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getItr_seq() {
		return itr_seq;
	}

	public void setItr_seq(int itr_seq) {
		this.itr_seq = itr_seq;
	}

	public Date getItr_date() {
		return itr_date;
	}

	public void setItr_date(Date itr_date) {
		this.itr_date = itr_date;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}	
	
	
	
}
