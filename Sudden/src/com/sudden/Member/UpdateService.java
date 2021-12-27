package com.sudden.Member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;

@WebServlet("/UpdateService")
public class UpdateService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nextpage="";
		
		request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		memberDTO dto = (memberDTO) session.getAttribute("dto");

		String id = dto.getId();
		String nick = request.getParameter("nick");

		memberDAO dao = new memberDAO();
		int cnt = dao.P1_Update(id,nick);
			
		if (cnt > 0) {
			
			memberDTO update_dto=new memberDTO(id,nick);
			session.setAttribute("dto", update_dto);
			nextpage = "Mypage.jsp";
		} else {
			System.out.println("실패");
			nextpage = "propile.jsp";
		}
		return nextpage;
	}

}
