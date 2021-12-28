package com.sudden.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.sudden.DTO.cctvDTO;


public class cctvDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
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
public void cctv_addr(cctvDTO dto) {
		
		try {

			getconn();

			System.out.println("");

			String sql = "select *from tbl_cctv where cam_addr like ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%"+dto.getCctv()+"%");

			rs= psmt.executeQuery();
			
			while(rs.next()) {
				String addr= rs.getNString("cam_addr");
			}

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
	
	}
}
