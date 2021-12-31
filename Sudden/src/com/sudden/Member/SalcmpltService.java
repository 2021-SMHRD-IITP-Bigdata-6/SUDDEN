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
		System.out.println("핀매완료서비스");
		
		int seq = Integer.parseInt(request.getParameter("goodsseq"));
		String id = request.getParameter("chatid");
		System.out.println("판매완료서비스_seq = "+seq);
		System.out.println("판매완료서비스_id = "+id);
	
		
		goodsDTO dto = new goodsDTO(seq);
		goodsDAO dao = new goodsDAO();
		chatDTO cdto = new chatDTO(seq, id);
		tradeDAO tdao = new tradeDAO();
		
		int cnt = dao.Salcmplte(dto);
		System.out.println("cdto_seq = "+cdto.getSeq());
		tdao.intrade(cdto);
		if(cnt>0) {
			System.out.println("핀매완료서비스성공");
		}else {
			System.out.println("핀매완료서비스실패");
		}
		
		return "sal_history.jsp";
	}
	

}
