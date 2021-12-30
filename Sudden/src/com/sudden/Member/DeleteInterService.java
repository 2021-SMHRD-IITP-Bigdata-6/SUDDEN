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
		
		int seq = Integer.parseInt(request.getParameter("delete_saq"));
		System.out.println("seq=" + seq);
		//int g_seq = Integer.parseInt(seq);
		System.out.println("�����ϴ�  ��ǰ��ȣ:"+seq);
		
		request.setCharacterEncoding("utf-8");
		
		InterDAO dao = new InterDAO();
		int cnt = dao.DeleteInter(seq);

		return "shoping-cart.jsp";
	}



}
