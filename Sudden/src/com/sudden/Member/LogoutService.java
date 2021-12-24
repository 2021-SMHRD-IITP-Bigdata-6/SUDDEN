package com.sudden.Member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;

@WebServlet("/LogoutService")
public class LogoutService implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nextpage = "";
		
		HttpSession session=request.getSession();
		session.removeAttribute("dto");
		//response.sendRedirect("index.jsp");
		nextpage = "index.jsp";
		return nextpage;
	}

}