package com.sudden.DTO;

public class tradeDTO {
	private int seq;
	private int goodsseq;
	private String id;
	private String review;
	private int rating;
	
	public tradeDTO(int seq) {
		super();
		this.seq = seq;
	}
	
	
	
	public tradeDTO(int seq, int goodsseq, String id, String review, int rating) {
		super();
		this.seq = seq;
		this.goodsseq = goodsseq;
		this.id = id;
		this.review = review;
		this.rating = rating;
	}
	

	
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getGoodsseq() {
		return goodsseq;
	}
	public void setGoodsseq(int goodsseq) {
		this.goodsseq = goodsseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}

}
