package com.sudden.DTO;

public class chatDTO {
	private int seq;
	private String id;
	
	public chatDTO(String id) {
		super();
		this.id = id;
	}
	
	public chatDTO(int seq, String id) {
		super();
		this.seq = seq;
		this.id = id;
	}
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

}
