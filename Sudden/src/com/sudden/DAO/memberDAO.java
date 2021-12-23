package com.sudden.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sudden.DTO.memberDTO;

public class memberDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	memberDTO dto = null;

	int cnt = 0;
	private boolean check;

	public void getconn() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("클래스파일 로딩완료");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_5_1216";
			String dbpw = "smhrd5";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			if (conn != null) {
				System.out.println("연결성공");
			} else {
				System.out.println("연결실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void cloes() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public int Join(memberDTO dto) {

		try {

			getconn();

			System.out.println("");

			String sql = "insert into tbl_member values (?,?,?,?,?,?,sysdate,'N')";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getNick());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getTel());
			psmt.setString(6, dto.getEmail());

			cnt = psmt.executeUpdate();
			System.out.println("dao-join");
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
		return cnt;
	}
	public memberDTO Login(memberDTO dto1) {
		try {

			getconn();

			String sql = "select * from tbl_member where mem_id=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto1.getId());
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				String getid = rs.getString("mem_id");
				String getpw = rs.getString("mem_pw");
//				String gettel = rs.getString("mem_tel");
//				String getaddress = rs.getString("mem_addr");
				if (dto1.getPw().equals(getpw)) {
					dto = new memberDTO(getid);
					

				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		System.out.println(dto);
		return dto;
	}

	public boolean Join_check(memberDTO dto) {

		try {

			getconn();

			String sql = "select * from tbl_member where mem_id=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());

			rs = psmt.executeQuery();

			check = rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		return check;
	}
	
	public boolean nick_check(memberDTO dto) {

		try {

			getconn();

			String sql = "select * from tbl_member where mem_nick=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNick());

			rs = psmt.executeQuery();

			check = rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		return check;
	}
	
	public boolean login_check(memberDTO dto) {
		
		try {

			getconn();

			String sql = "select * from tbl_member where mem_id=? and mem_pw=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPw());
			
			System.out.println("id="+dto.getId());
			System.out.println("pw="+dto.getPw());

			rs = psmt.executeQuery();

			check = rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		return check;
		
		
	}
	
}


