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

@WebServlet("/LoginService")
public class JoinService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 

		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		
		
		memberDTO dto = new memberDTO(id, pw, nick, addr, tel, email);

		//1. memberDAO에 해당하는 기능메소드로 값 보내주기(객체생성, 메소드, 매개변수)
		memberDAO dao = new memberDAO();
		//2. cnt값 리턴해주기(메소드, 리턴)
		int cnt = dao.Join(dto);
		
		String nextpage = "";
		
		if (cnt > 0) {
			
			request.setAttribute("dto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("main.jsp");
			//RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");
			dis.forward(request, response);
			//session과 request 차이
			// joincon에서 사용하는 dto는 joincon,joinsuccess에서만 사용
			// 그래서 사용하고dto는 사라져도됨
			// 그때 request사용
			
			// 모든 서버 페이지에서 dto사용할때 session
		} else {
			System.out.println("가입실패");
			response.sendRedirect("main.jsp");
		}
		return null;
	}
		
	}


