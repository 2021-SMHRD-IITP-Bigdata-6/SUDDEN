package com.sudden.DTO;

public class memberDTO {
	
	private String id;
	private String pw;
	private String nick;
	private String addr;
	private String tel;
	private String email;
	
	
	
	public memberDTO(String id, String pw, String nick, String addr, String tel, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.addr = addr;
		this.tel = tel;
		this.email = email;
	}
	public memberDTO(String id) {//check.do
		super();
		this.id = id;
	}
	public memberDTO(String nick, int i) {//joinservice
		super();
		this.nick = nick;
		
	}
	public memberDTO(String id, String nick) {//joinservice
		super();
		this.id = id;
		this.nick = nick;
	}

	public memberDTO(String id, String pw, int i) {//joinservice
		super();
		this.id = id;
		this.pw = pw;
	}	

	public memberDTO(String id, String pw, String nick) {//loginservice
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
	}
	public memberDTO(String id, String pw, String nick, String addr) {//login_check
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.addr = addr;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


}
