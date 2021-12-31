package com.sudden.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sudden.DAO.goodsDAO;
import com.sudden.DAO.tradeDAO;
import com.sudden.DTO.chatDTO;
import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.tradeDTO;

@WebServlet("/ReviewService")
public class ReviewService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		System.out.println("핀매완료서비스");
		
		int goodsseq = Integer.parseInt(request.getParameter("seq"));
		String id = request.getParameter("id");
		String review = request.getParameter("review");
		int rating = Integer.parseInt(request.getParameter("rating"));
		
	
		
		tradeDTO dto = new tradeDTO(goodsseq, id, review, rating);
		tradeDAO tdao = new tradeDAO();
		
		int cnt = tdao.inreview(dto);
		if(cnt>0) {
			System.out.println("핀매완료서비스성공");
			response.sendRedirect("Mypage.jsp");
		}else {
			System.out.println("핀매완료서비스실패");
			response.sendRedirect("index.jsp");
		}

	}

}
