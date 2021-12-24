package com.sudden.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.memberDTO;

public class goodsDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	goodsDTO dto = null;

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

	public ArrayList<goodsDTO> Search(goodsDTO dto) {
		
		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();
		
		try {

			getconn();

			String sql = "select * from tbl_product where goods_name=?";

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
	
}
