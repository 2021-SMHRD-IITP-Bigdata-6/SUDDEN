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

@WebServlet("/ResetService")
public class ResetService implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("title");
		
		goodsDTO dto = new goodsDTO(name);
		goodsDAO dao = new goodsDAO();
		
		int cnt = dao.reset(dto);
		String nextpage="";
		
		if (cnt > 0) {
			System.out.println("���¼���");
			
		} else {
			System.out.println("���½���");

		}
		
		
		return "0";
	}

}
