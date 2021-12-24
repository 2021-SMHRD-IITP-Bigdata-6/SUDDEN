package com.sudden.Member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.sudden.DAO.goodsDAO;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.memberDTO;

@WebServlet("/SearchService")
public class SearchService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {

		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");		

		HttpSession session = request.getSession();
		
		goodsDTO dto = new goodsDTO(name);	
		goodsDAO dao = new goodsDAO();

		ArrayList<goodsDTO> list = dao.Search(dto);
		String nextpage="";
				
		if (dto!=null) {
			System.out.println("search 완료");
			session.setAttribute("list", list);
			nextpage = "index.jsp";
		} else {
			System.out.println("search 실패");
			nextpage = "log-in.html";
		}
		return nextpage;
	}
		
	}

