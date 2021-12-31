package com.sudden.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
import com.sudden.DAO.chatDAO;
import com.sudden.DAO.goodsDAO;
import com.sudden.DAO.tradeDAO;
import com.sudden.DTO.chatDTO;
import com.sudden.DTO.goodsDTO;



public class SalcmpltService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		System.out.println("�ɸſϷἭ��");
		
		int seq = Integer.parseInt(request.getParameter("goodsseq"));
		String id = request.getParameter("chatid");
		System.out.println("�ǸſϷἭ��_seq = "+seq);
		System.out.println("�ǸſϷἭ��_id = "+id);
	
		
		goodsDTO dto = new goodsDTO(seq);
		goodsDAO dao = new goodsDAO();
		chatDTO cdto = new chatDTO(seq, id);
		tradeDAO tdao = new tradeDAO();
		
		int cnt = dao.Salcmplte(dto);
		System.out.println("cdto_seq = "+cdto.getSeq());
		tdao.intrade(cdto);
		if(cnt>0) {
			System.out.println("�ɸſϷἭ�񽺼���");
		}else {
			System.out.println("�ɸſϷἭ�񽺽���");
		}
		
		return "sal_history.jsp";
	}
	

}
