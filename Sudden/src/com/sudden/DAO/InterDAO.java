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
			System.out.println("Ŭ�������� �ε��Ϸ�");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_5_1216";
			String dbpw = "smhrd5";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			if (conn != null) {
				System.out.println("���Ἲ��");
			} else {
				System.out.println("�������");
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

	public ArrayList<goodsDTO> addInter(goodsDTO dto) { /// �����߰�
		
		ArrayList<goodsDTO> arr = new ArrayList<goodsDTO>();
		
		try {

			getconn();

			String sql = "select * from tbl_product where goods_seq=?";
			psmt = conn.prepareStatement(sql); 
			psmt.setInt(1, dto.getSeq()); 
 
			rs = psmt.executeQuery();
			if(rs.next()) {
				int seq = rs.getInt("goods_seq");
				String name = rs.getString("goods_name");
				String img = rs.getString("goods_img");
				int price = rs.getInt("goods_price");
				
				gdto = new goodsDTO(seq,name,img,price);
				arr.add(gdto);
				
			}
		} catch (Exception e) {
			System.out.println("Ŭ�������� �ε�����");
			e.printStackTrace();
		} finally {
			cloes();
		}

		return arr;

	}

	public ArrayList<InterDTO> InterSearch(InterDTO dto){ //���ɸ�� �ҷ�����
		
		ArrayList<InterDTO> arrlist = new ArrayList<InterDTO>();
		getconn();
				
		try {
			StringBuffer sb = new StringBuffer();
			sb.append("SELECT  ");
			sb.append("FROM tbl_product p");
			
			String sql = sb.toString();
			
			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String g_img = gdto.getImg();
				String g_name = gdto.getName();
				int g_price = gdto.getPrice();
				
				//�̹����� ���� �����Ŵ� goodDTO�� �־� �׷� �ű⿡�ٰ� ������ �ǳ�
				//gdto = new goodsDTO();
				//arrlist.add(gdto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return arrlist;
		
	}
	
	public void resetInter() {  //���ɻ��� /���� ������ư ����
		
		getconn();
		
		String sql = "delere from tbl_my_goods WHERE ?";
		
		try {
			psmt = conn.prepareStatement(sql);
			//��⵵ ���پ�
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cloes();
		}
				
	}
	
//	public boolean selectInter(String id, int seq) {  //���ɻ�ǰ�����ֱ�
//
//		getconn();
//
//		String sql = "SELECT * FROM TBL_MY_GOODS WHERE mem_id = ? AND GOODS_SEQ = ?";
//
//		try {
//			psmt = conn.prepareStatement(sql);
//			psmt.setString(1, id);
//			psmt.setInt(2, seq);
//			rs = psmt.executeQuery();
//			if (rs.next()) {
//				//tbl_product ���̺� �ִ�  �̹���, ��ǰ��, ����
//			}
//		} catch (Exception e) {
//			System.out.println("Ŭ�������� �ε�����");
//			e.printStackTrace();
//		} finally {
//			cloes();
//		}
//		return false;
//	}
	
	
}
