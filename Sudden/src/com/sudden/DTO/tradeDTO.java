package com.sudden.DTO;

public class tradeDTO {
	private int goodsseq;
	private String id;
	private String review;
	private int rating;
	
	public tradeDTO(int goodsseq) {
		super();
		this.goodsseq = goodsseq;
	}
	
	public tradeDTO(int goodsseq, String id) {
		super();
		this.goodsseq = goodsseq;
		this.id = id;
	}
	
	
	
	public tradeDTO(int goodsseq, String id, String review, int rating) {
		super();
		this.goodsseq = goodsseq;
		this.id = id;
		this.review = review;
		this.rating = rating;
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
