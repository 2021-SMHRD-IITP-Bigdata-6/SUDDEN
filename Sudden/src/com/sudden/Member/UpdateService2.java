package com.sudden.Member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;

@WebServlet("/UpdateService2")
public class UpdateService2 implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextpage="";
		
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String nick = request.getParameter("nick");
		String email = request.getParameter("email");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		
		System.out.println(id);
		System.out.println(nick);
		System.out.println(email);
		System.out.println(addr);
		System.out.println(tel);
		
		memberDTO dto = new memberDTO(id, nick, email, addr, tel, 0);
		memberDAO dao = new memberDAO();
		int cnt = dao.P2_Update(dto);
		
		if (cnt > 0) {
			request.setAttribute("dto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("Mypage.jsp");
			dis.forward(request, response);
			System.out.println("변경성공");
		} else {
			System.out.println("변경실패");
			nextpage = "Propile2.jsp";
		}
		return nextpage;
	}

}
