package com.sudden.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;

@WebServlet("/PwsearchServiec")
public class PwsearchServiec implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("utf-8");
		
		String nextpage="";
		
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		
		System.out.println("찾기 =  "+id);
		System.out.println("찾기 =  "+email);
		
		memberDAO dao = new memberDAO();
		memberDTO dto = new memberDTO(id, email, 0, 0);
		//String pw = dao.pw_search(dto); 
		
	
//		if(pw != null) {
//			
//			request.setAttribute("pw", pw);
//			nextpage= "pwupdate.jsp";
//			
//		}
//		System.out.println("pw확인후이동할 페이지"+nextpage);
//		
		return "";
	}

}
