package com.sudden.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sudden.DTO.InterDTO;
import com.sudden.DTO.goodsDTO;

public class InterDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	HttpServletRequest request = null;
	HttpServletResponse response = null;

	goodsDTO gdto = null;
	InterDTO idto = null;
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

	public ArrayList<goodsDTO> addInter(int iseq) { // 관심상품 보기

		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();

		try {

			getconn();

			String sql = "select * from tbl_product where goods_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, iseq);

			rs = psmt.executeQuery();
			if (rs.next()) {
				int seq = rs.getInt("goods_seq");
				String name = rs.getString("goods_name");
				String img = rs.getString("goods_img");
				int price = rs.getInt("goods_price");
				String id = rs.getString("mem_id");
				gdto = new goodsDTO(seq, name, img, price,id);
				arr.add(gdto);
			}
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}

		return arr;

	}

	public int InterUpload(goodsDTO dto) { // 관심등록한 값 저장하기

		getconn();
		try {
			
			String sql = "INSERT INTO tbl_my_goods (goods_seq, inter_date, mem_id) VALUES (?,sysdate,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getSeq());
			psmt.setString(2, dto.getId());
			
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}

		return cnt;
	}

	public ArrayList<goodsDTO> searchInter(String id) { // 관심상품 보기

		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();

		try {

			getconn();

			String sql = "select * from tbl_my_goods where mem_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();
			while (rs.next()) {
				int seq = rs.getInt("goods_seq");
				gdto = new goodsDTO(seq);
				arr.add(gdto);

			}
		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}

		return arr;

	}public int checkInter(String cid) { //관심 상품 체크용
		int check=0;
		getconn();
		try {
			System.out.println("interdao = "+cid);
			String sql = "select * from tbl_my_goods where mem_id =?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cid);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				check=1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}

		return check;
	}public int inter_ckeck(int iseq) { //관심 중복체크용
		
		int inter_ckeck = 0;
		
		getconn();
		
		try {
			System.out.println("goods_seq= "+iseq);
			String sql = "select * from tbl_my_goods where goods_seq =?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, iseq);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
			 inter_ckeck=1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}

		return inter_ckeck;
	}
	public int DeleteInter(int seq) {
		
		getconn();

		String sql = "delete from tbl_my_goods where goods_seq=?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			
			cnt = psmt.executeUpdate();
			
			if(cnt<0) {
				System.out.println("삭제실패");
			}else {
				System.out.println("삭제성공");
			}

		} catch (Exception e) {
			System.out.println("클래스파일 로딩실패");
			e.printStackTrace();
		} finally {
			cloes();
		}
		return cnt;
	}

}