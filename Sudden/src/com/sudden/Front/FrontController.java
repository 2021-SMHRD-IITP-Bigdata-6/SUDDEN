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

		//com.message.member package에 있는 servlet 파일들을 하나로 만들기
				// 중복되는 코드or추적 및 보안을 적용할 때 유지보수에 용이	
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
