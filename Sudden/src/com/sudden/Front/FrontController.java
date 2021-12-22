package com.sudden.Front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
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
				}
				
				if(nextpage != null) {
					response.sendRedirect(nextpage);
				}
		
	}

}
