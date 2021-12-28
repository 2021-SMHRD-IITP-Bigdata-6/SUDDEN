package com.sudden.DTO;

import java.sql.Date;

public class goodsDTO {
	private int seq;
	private String kate;
	private String name;
	private String content;
	private String img;
	private int price;
	private String status;
	private Date update;
	private String id;
	
	public goodsDTO(int seq,String kate,String name, String content, String img, int price, String status, Date update, String id) {
		super();
		this.seq=seq;
		this.kate = kate;
		this.name = name;
		this.content = content;
		this.img = img;
		this.price = price;
		this.status = status;
		this.update = update;
		this.id = id;
	}
	
	
	
	
	public goodsDTO(String name) {
		this.name = name;
	}
	public goodsDTO(int seq) {
		this.seq = seq;
	}
	
	public goodsDTO(String img, int i) {
		this.img = img;
		
	}
	public goodsDTO(String img, String id) {
		
		this.img = img;
		this.id = id;
	}

	public goodsDTO(String name, String img, int price) {
		this.name = name;
		this.img = img;
		this.price = price;
	}
	
	public goodsDTO(String name, String content, String img, int price) {
		this.name = name;
		this.content = content;
		this.img = img;
		this.price = price;
	}
	public goodsDTO(int seq, String name, String img, int price) {
		this.seq = seq;
		this.name = name;
		this.img = img;
		this.price = price;
	}




	public goodsDTO(String kate, String name, String content, String img, int price, String id) {
		this.kate = kate;
		this.name = name;
		this.content = content;
		this.img = img;
		this.price = price;
		this.id = id;
	}



	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getKate() {
		return kate;
	}
	public void setKate(String kate) {
		this.kate = kate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getUpdate() {
		return update;
	}
	public void setUpdate(Date update) {
		this.update = update;
	}
	public String getId() {
		return id;		
	}
	public void setId(String id) {
		this.id = id;
	}

}
