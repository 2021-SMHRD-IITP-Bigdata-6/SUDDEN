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
		

		HttpSession session = request.getSession();
		
		memberDTO dto = new memberDTO(id, pw, 0);	
		memberDAO dao = new memberDAO();

		
		String nextpage="";
				
		if (dto!=null) {
			System.out.println("�α��� �Ϸ�");
			session.setAttribute("dto", dto);
			nextpage = "index.jsp";
		} else {
			System.out.println("�α��� ����");
			nextpage = "log-in.html";
		}
		return nextpage;
	}

}
