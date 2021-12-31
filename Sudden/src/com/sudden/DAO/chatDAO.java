package com.sudden.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sudden.DTO.chatDTO;
import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.memberDTO;

public class chatDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	HttpServletRequest request=null;
	HttpServletResponse response=null;

	goodsDTO dto = null;
	goodsDTO vo = null;

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
	
	public int buyid(chatDTO dto) {

		try {
			
			getconn();

			String sql = "insert into tbl_chatting_room (goods_seq, mem_id) values (?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getSeq());
			psmt.setString(2, dto.getId());
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
		return cnt;
	
		
	}
	
	public ArrayList<chatDTO> searchchat(int seq) {
		 
		ArrayList<chatDTO> arr = new ArrayList<chatDTO>();
		
		try {
			
			getconn();
			System.out.println("searchchatdao_seq = "+seq);
			String sql = "select * from tbl_chatting_room where goods_seq = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);

			rs = psmt.executeQuery();
			
			while (rs.next()) {
				String id = rs.getString("mem_id");
				System.out.println("판매완료목록 = "+id);
				
				chatDTO dto = new chatDTO(id);
				arr.add(dto);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return arr;

	}

	
	
	

}
