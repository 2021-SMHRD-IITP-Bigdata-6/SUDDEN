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
import com.inter.Login_Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;

@WebServlet("/LoginService")
public class JoinService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 

		int cnt = 0;
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String addr = request.getParameter("addr");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		
		
		memberDTO dto = new memberDTO(id, pw, nick, addr, tel, email);
		//1. memberDAO�� �ش��ϴ� ��ɸ޼ҵ�� �� �����ֱ�(��ü����, �޼ҵ�, �Ű�����)
		memberDAO dao = new memberDAO();
		//2. cnt�� �������ֱ�(�޼ҵ�, ����)
		
		boolean check = dao.nick_check(dto);
		if(!check) {
			cnt = dao.Join(dto);
		}else {
			System.out.println("�г����ߺ�");
			response.sendRedirect("sign-up.html");
		}
		
		System.out.println(check);
		String nextpage="";
		if (cnt > 0) {
			
			request.setAttribute("dto", dto);
			RequestDispatcher dis = request.getRequestDispatcher("log-in.jsp");
			//RequestDispatcher dis = request.getRequestDispatcher("joinSuccess.jsp");
			dis.forward(request, response);
			
			
			//session�� request ����
			// joincon���� ����ϴ� dto�� joincon,joinsuccess������ ���
			// �׷��� ����ϰ�dto�� ���������
			// �׶� request���
			
			// ��� ���� ���������� dto����Ҷ� session
		} else {
			System.out.println("���Խ���");
			nextpage = "sign-up.html";
			//response.sendRedirect("sign-up.html");
		}
		return null;
	}
		
	}


