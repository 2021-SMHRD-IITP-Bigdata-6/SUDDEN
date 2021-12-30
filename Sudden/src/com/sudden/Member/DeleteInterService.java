package com.sudden.Member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
import com.sudden.DAO.InterDAO;

@WebServlet("/DeleteInterService")
public class DeleteInterService implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String seq = request.getParameter("delete_saq");
		System.out.println("삭제하는  상품번호:"+seq);
		
		request.setCharacterEncoding("utf-8");
		int seq2 = Integer.parseInt(seq);
		InterDAO dao = new InterDAO();
		int cnt = dao.DeleteInter(seq2);

		return "shoping-cart.jsp";
	}



}
