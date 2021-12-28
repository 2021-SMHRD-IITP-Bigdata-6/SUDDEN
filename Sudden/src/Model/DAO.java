package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAO {
	
	   Connection conn = null;
	   PreparedStatement psmt = null;
	   ResultSet rs = null;

	   public void conn() {
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
	   
	   public void close() {
		      try {
		         if (psmt != null) {
		            psmt.close();
		         }
		         if (conn != null) {
		            conn.close();
		         }
		         if (rs != null) {
		            rs.close();
		         }
		      } catch (SQLException e) {
		         e.printStackTrace();
		      }

		   }
	   
	   // CCTV 정보를 담는 메소드
	   public ArrayList<DTO> showInfo() {
		   ArrayList<DTO> CCTV_list = new ArrayList<DTO>();
		   
		   conn();
		   
		   try {
			   String sql = "select * from CCTV_list";
			   psmt = conn.prepareStatement(sql);
			   rs = psmt.executeQuery();
			   
			   while(rs.next()) {
				   String address = rs.getString("CAM_ADDR");
				   DTO dto = new DTO(address);
				   CCTV_list.add(dto);
			   }
			
		   } catch (Exception e) {
			   e.printStackTrace();
		   } finally {
			   close();
		   } return CCTV_list;
	   }
	   
	   
	   
	   
}
