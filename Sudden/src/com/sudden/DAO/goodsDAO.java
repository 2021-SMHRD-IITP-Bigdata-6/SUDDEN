package com.sudden.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.memberDTO;

public class goodsDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	goodsDTO dto = null;
	goodsDTO vo = null;

	int cnt = 0;
	private boolean check;
	private static goodsDAO instance = new goodsDAO();
	


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

	public ArrayList<goodsDTO> Search(goodsDTO dto) {
		
		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();
		
		try {
			System.out.println("dao="+dto);
			getconn();

			String sql = "select * from tbl_product where goods_name like ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%" + dto.getName() + "%");
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				String getname = rs.getString("goods_name");
				String getimg = rs.getString("goods_img");
				int getprice = rs.getInt("goods_price");
	
				dto = new goodsDTO(getname, getimg, getprice);
				arr.add(dto);
				
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		System.out.println(dto);
		return arr;
		
		
	}

	public int uploadimg(goodsDTO dto){
		getconn();
		try {
		String sql = "INSERT INTO tbl_product (goods_cat, goods_name, goods_content, goods_img, goods_price, goods_status, goods_update, mem_id) VALUES (?, ?, ?, ?, ?, 'N', sysdate, ?)";

		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getKate());
		psmt.setString(2, dto.getName());
		psmt.setString(3, dto.getContent());
		psmt.setString(4, dto.getImg());
		psmt.setInt(5, dto.getPrice());
		psmt.setString(6, dto.getId());

		
		cnt = psmt.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return cnt;
	}

	public int reset(goodsDTO dto) {
		
		try {

			getconn();

			System.out.println("");

			String sql = "DELETE FROM tbl_product WHERE goods_name=?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
		return cnt;
	}
	
}
	

