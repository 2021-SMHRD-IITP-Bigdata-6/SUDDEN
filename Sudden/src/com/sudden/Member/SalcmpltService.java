package com.sudden.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
import com.sudden.DAO.goodsDAO;
import com.sudden.DTO.goodsDTO;



public class SalcmpltService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		System.out.println("핀매완료서비스");
		int seq = Integer.parseInt(request.getParameter("goodsseq"));
		System.out.println("판매완료서비스_seq = "+seq);
		goodsDTO dto = new goodsDTO(seq);
		
		goodsDAO dao = new goodsDAO();
		
		int cnt = dao.Salcmplte(dto);
		if(cnt>0) {
			System.out.println("핀매완료서비스성공");
		}else {
			System.out.println("핀매완료서비스실패");
		}
		
		return "sal_history.jsp";
	}
	

}
