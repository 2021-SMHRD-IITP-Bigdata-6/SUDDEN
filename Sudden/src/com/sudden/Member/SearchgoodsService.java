package com.sudden.Member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
import com.sudden.DAO.goodsDAO;
import com.sudden.DTO.goodsDTO;

@WebServlet("/SearchgoodsService")
public class SearchgoodsService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 

		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("search");
		
		goodsDTO dto = new goodsDTO(name);	
		goodsDAO dao = new goodsDAO();
		
		int cnt = dao.intsearch(dto);

		System.out.println("cnt = "+cnt);
		if (cnt > 0) {
			
			request.setAttribute("sdto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("shop-grid.jsp");
			dis.forward(request, response);

		} else {
			System.out.println("searchgoodsService½ÇÆÐ");
			response.sendRedirect("index.jsp");
		}
		
		return null;
	}

}
