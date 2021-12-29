package com.sudden.DAO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.memberDTO;

public class goodsDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	HttpServletRequest request=null;
	HttpServletResponse response=null;

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
			String name1 = "%" + dto.getName() + "%";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name1);
			
			rs = psmt.executeQuery();

			while (rs.next()) {
				String name = rs.getString("goods_name");
				String img = rs.getString("goods_img");
				int price = rs.getInt("goods_price");
	
				dto = new goodsDTO(name, img, price);
				arr.add(dto);
				
			}
			
			System.out.println("arr_contr"+arr.size());
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}

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
	public goodsDTO goodsdetail(goodsDTO dto){
		goodsDTO gddto = null;
		String moveUrl="";
		int cnt=0;
		getconn();
		try {
		String sql = "select * from tbl_product where goods_seq=?";

		psmt = conn.prepareStatement(sql);

		psmt.setInt(1, dto.getSeq());
		rs = psmt.executeQuery();

		while (rs.next()) {
			int seq = rs.getInt("goods_seq");
			String name = rs.getString("goods_name");
			String content = rs.getString("goods_content");
			String img = rs.getString("goods_img");
			int price = rs.getInt("goods_price");

			gddto = new goodsDTO(seq,name,content, img, price);
			
			cnt = 1;
		}
//		System.out.println("디테일에 들어갈꺼"+dto.getName());
//		request.setAttribute("gddto", dto);
//		//moveUrl = "OpenimgService";
//		moveUrl = "shop-details.jsp";
//		response.sendRedirect(moveUrl);
		
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		cloes();
	}
		
		return gddto;
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
	}public ArrayList<goodsDTO> SearchAll() {
		
		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();
		
		try {
			
			getconn();

			String sql = "select * from tbl_product ";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				String name = rs.getString("goods_name");
				String img = rs.getString("goods_img");
				int price = rs.getInt("goods_price");
	
				dto = new goodsDTO(name, img, price);
				arr.add(dto);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return arr;
		
		
	}public ArrayList<goodsDTO> Searchgoods(goodsDTO gdto) {
		
		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();
		
		try {
			
			getconn();

			String sql = "select * from tbl_product where goods_name like ?";
			String name1 = "%" + gdto.getName() + "%";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name1);

			rs = psmt.executeQuery();

			while (rs.next()) {
				int seq = rs.getInt("goods_seq");
				String name = rs.getString("goods_name");
				String img = rs.getString("goods_img");
				int price = rs.getInt("goods_price");
	
				dto = new goodsDTO(seq, name, img, price);
				arr.add(dto);
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return arr;
		
		
	}

	public int intsearch(goodsDTO dto) {
		try {
			
			getconn();

			String sql = "select * from tbl_product where goods_name like ?";
			String name1 = "%" + dto.getName() + "%";
			System.out.println("ints = "+dto.getName());
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name1);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				cnt=1;
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
		
		return cnt;
		
		
	}
	
}
	

