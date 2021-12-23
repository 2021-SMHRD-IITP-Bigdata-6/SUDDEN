package com.sudden.Member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;

public class LoginService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick="0";

		HttpSession session = request.getSession();
		
		memberDTO dto = new memberDTO(id, pw, nick);
		
		memberDAO dao = new memberDAO();
		System.out.println(id);
		System.out.println(pw);
		System.out.println(nick);
		dto = dao.Login(dto);
		System.out.println(dto);
		String nextpage="";
				
		if (dto!=null) {
			System.out.println("로그인 완료");
			session.setAttribute("dto", dto);
			nextpage = "index.html";
		} else {
			System.out.println("로그인 실패");
			nextpage = "log-in.html";
		}
		return nextpage;
	}

}
