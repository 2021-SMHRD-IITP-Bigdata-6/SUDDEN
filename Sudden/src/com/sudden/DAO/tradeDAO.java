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
import com.sudden.DTO.tradeDTO;

public class tradeDAO {
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	HttpServletRequest request=null;
	HttpServletResponse response=null;

	goodsDTO dto = null;
	goodsDTO vo = null;

	int cnt = 0;

	


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

	public void intrade(chatDTO cdto) {
		
		try {
			
			getconn();

			String sql = "insert into tbl_trade (goods_seq, purchaser_id) values (?, ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cdto.getSeq());
			psmt.setString(2, cdto.getId());
			
			cnt = psmt.executeUpdate();
			if(cnt>0) {
				System.out.println("구매내역저장");
			}else {
				System.out.println("구매내역실패");
			}
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
		
	
		
	}
	public ArrayList<tradeDTO> searchseq(memberDTO dto) {
		 ArrayList<tradeDTO> arr = new ArrayList<tradeDTO>();

		
		try {

			getconn();
			
			System.out.println("searchseqdao= "+dto.getId());

			String sql = "select * from tbl_trade where purchaser_id = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getId());

			rs = psmt.executeQuery();

			while (rs.next()) {
				int seq = rs.getInt("goods_seq");
				int rating = rs.getInt("trade_rating");
				tradeDTO tdto = new tradeDTO(seq,rating);
				arr.add(tdto);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return arr;
	}
	
public ArrayList<goodsDTO> purchase(tradeDTO tdto) {
		
		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();
		
		try {
			
			getconn();
			
			System.out.println("purchasedao = "+tdto.getGoodsseq());

			String sql = "select * from tbl_product where goods_seq = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, tdto.getGoodsseq());

			rs = psmt.executeQuery();

			while (rs.next()) {
				int seq = rs.getInt("goods_seq");
				String name = rs.getString("goods_name");
				String img = rs.getString("goods_img");
				int price = rs.getInt("goods_price");
				String status = rs.getString("goods_status");
				
				goodsDTO gdto = new goodsDTO(seq, name, img, price,status,0);
				arr.add(gdto);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return arr;
		
		
	}

    public int inreview(tradeDTO tdto) {
    	
    	try {
			
			getconn();

			String sql = "update tbl_trade set trade_memo = ?, trade_rating = ? where goods_seq = ? ";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, tdto.getReview());
			psmt.setInt(2, tdto.getRating());
			psmt.setInt(3, tdto.getGoodsseq());
			
			cnt = psmt.executeUpdate();
			if(cnt>0) {
				System.out.println("리뷰저장");
			}else {
				System.out.println("리뷰실패");
			}
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
    	
    	

	return cnt;
}

	public int review_check(tradeDTO tdto) {
		
		try {
			
			getconn();
			
			System.out.println("purchasedao = "+tdto.getGoodsseq());

			String sql = "select * from tbl_trade where goods_seq = ? and purchaser_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, tdto.getGoodsseq());
			psmt.setString(2, tdto.getId());

			rs = psmt.executeQuery();

			while (rs.next()) {
				int seq = rs.getInt("goods_seq");
				if(seq==tdto.getGoodsseq()) {
					cnt=1;
				}

				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		return cnt;
	}
	public ArrayList<tradeDTO> reseq(tradeDTO tdto) {
		
		ArrayList<tradeDTO> tarr = new ArrayList<tradeDTO>();
		
		try {
			
			getconn();
			
			System.out.println("purchasedao = "+tdto.getGoodsseq());

			String sql = "select * from tbl_trade where goods_seq = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, tdto.getGoodsseq());

			rs = psmt.executeQuery();

			while (rs.next()) {
				String id = rs.getString("purchaser_id");
				String review = rs.getString("trade_memo");
				int rating =  rs.getInt("trade_rating");
				
				
				tradeDTO dto = new tradeDTO(id,review,rating);
				tarr.add(dto);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return tarr;
		
		
	}public int avgrating(tradeDTO tdto) {
		
		int rating = 0;
		try {
			
			getconn();

			String sql = "select * from tbl_trade where goods_seq = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, tdto.getGoodsseq());

			rs = psmt.executeQuery();

			while (rs.next()) {
				rating = rs.getInt("trade_rating");

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		return rating;
	}

}
