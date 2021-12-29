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
public ArrayList<cctvDTO> cctv_addr(cctvDTO dto) {
	ArrayList<cctvDTO> cctv_list = new ArrayList<cctvDTO>();
		
	try {
		getconn();


			System.out.println("CCTVDAO = "+dto.getCctv());

			String sql = "select * from tbl_cctv where cam_addr like ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,"%"+dto.getCctv()+"%");

			rs= psmt.executeQuery();
			
			while(rs.next()) {
				String addr= rs.getString("cam_addr");
				dto = new cctvDTO(addr);

				cctv_list.add(dto);
				System.out.println("78"+cctv_list.size());
				System.out.println("addr왜"+addr);

				   
			}
			System.out.println("불러온 주소개수 ="+cctv_list.size());
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
		return cctv_list;
	}
}
