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

		         String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
		         String db_id = "hr";
		         String db_pw = "hr";
		         conn = DriverManager.getConnection(db_url, db_id, db_pw);

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
	   
	   // 음식점 정보를 담는 메소드
	   public ArrayList<DTO> showInfo() {
		   ArrayList<DTO> foodshop_list = new ArrayList<DTO>();
		   
		   conn();
		   
		   try {
			   String sql = "select * from food_shop";
			   psmt = conn.prepareStatement(sql);
			   rs = psmt.executeQuery();
			   
			   while(rs.next()) {
				   String name = rs.getString("name");
				   String address = rs.getString("address");
				   String tell = rs.getString("tell");
				   
				   DTO dto = new DTO(address);
				   foodshop_list.add(dto);
			   }
			
		   } catch (Exception e) {
			   e.printStackTrace();
		   } finally {
			   close();
		   } return foodshop_list;
	   }
	   
	   
	   
	   
}
