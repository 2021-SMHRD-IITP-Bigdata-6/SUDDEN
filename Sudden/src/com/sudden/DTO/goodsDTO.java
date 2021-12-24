package com.sudden.DTO;

import java.sql.Date;

public class goodsDTO {
	private String name;
	private String content;
	private String img;
	private int price;
	private String status;
	private Date update;
	
	public goodsDTO(String name, String content, String img, int price, String status, Date update) {
		super();
		this.name = name;
		this.content = content;
		this.img = img;
		this.price = price;
		this.status = status;
		this.update = update;
	}
	
	
	
	
	public goodsDTO(String name) {
		this.name = name;
	}

	public goodsDTO(String name, String img, int price) {
		this.name = name;
		this.img = img;
		this.price = price;
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

}
