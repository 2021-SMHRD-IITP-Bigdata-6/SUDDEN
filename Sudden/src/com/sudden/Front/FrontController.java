package com.sudden.Front;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;
import com.sudden.Member.JoinService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//com.message.member package�� �ִ� servlet ���ϵ��� �ϳ��� �����
				// �ߺ��Ǵ� �ڵ�or���� �� ������ ������ �� ���������� ����	
				String uri = request.getRequestURI();		
				String path = request.getContextPath();		
				String command = uri.substring(path.length()+1);
				
				Command com = null;
				String nextpage =null;
				
				System.out.println(command);

				if(command.equals("Joincon.do")) {
					
					com = new JoinService();
					nextpage = com.execute(request, response);
				} else if(command.equals("check.do")) {
					request.setCharacterEncoding("utf-8");

					String id = request.getParameter("id");
					
					memberDTO dto = new memberDTO(id);	
					memberDAO dao = new memberDAO();
					boolean tof = dao.Join_check(dto);
					
					PrintWriter out = response.getWriter();
					out.print(tof);
					
				}else if(command.equals("nick.do")) {
					request.setCharacterEncoding("utf-8");

					String id = request.getParameter("id");
					String nick = request.getParameter("nick");
					
					System.out.println(nick);
					
					memberDTO dto = new memberDTO(id,nick);	
					memberDAO dao = new memberDAO();
					boolean tof = dao.nick_check(dto);
					
					PrintWriter out = response.getWriter();
					out.print(tof);
					System.out.println(tof);
				}
				
				if(nextpage != null) {
					response.sendRedirect(nextpage);
				}
		
	}

}