package com.sudden.Front;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inter.Command;
import com.sudden.DAO.goodsDAO;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.memberDTO;
import com.sudden.Member.JoinService;
import com.sudden.Member.LoginService;
import com.sudden.Member.LogoutService;
import com.sudden.Member.SearchService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


				String uri = request.getRequestURI();		
				String path = request.getContextPath();		
				String command = uri.substring(path.length()+1);
				
				Command com = null;
				String nextpage =null;
				
				System.out.println(command);

				if(command.equals("Joincon.do")) {					
					com = new JoinService();
					nextpage = com.execute(request, response);
					
				}else if(command.equals("Logincon.do")||command.equals("Logincon_grid.do")||command.equals("Logincon_detail.do")) {					
					com = new LoginService();// 수정할곳
					nextpage = com.execute(request, response);
						
					
				}else if(command.equals("Logoutcon.do")) {					
					com = new LogoutService();
					nextpage = com.execute(request, response);	
					
				}else if(command.equals("Search.do")) {					
					com = new SearchService();
					nextpage = com.execute(request, response);	
					
					request.setCharacterEncoding("utf-8");

					String name = request.getParameter("name");				
					System.out.println("controll="+name);
					goodsDTO dto = new goodsDTO(name);	
					goodsDAO dao = new goodsDAO();
					ArrayList<goodsDTO> tof = dao.Search(dto); //고칠부분
					boolean ch = false;
					if(tof.get(0).getName().equals(null)) {
						ch = true;
					}
					
					PrintWriter out = response.getWriter();
					out.print(ch);				
					
				}else if(command.equals("check.do")) {
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
					
					
					
					memberDTO dto = new memberDTO(nick, 0);	
					memberDAO dao = new memberDAO();
					boolean tof = dao.nick_check(dto);
					
					PrintWriter out = response.getWriter();
					out.print(tof);
					System.out.println(tof);
					
				}else if(command.equals("login_check.do")) {
					request.setCharacterEncoding("utf-8");

					String id = request.getParameter("id");
					String pw = request.getParameter("pw");
					String nick="";
					String addr="";
					
					
					
					memberDTO dto = new memberDTO(id,pw,nick,addr);
					memberDAO dao = new memberDAO();
					boolean tof = dao.login_check(dto);
					
					PrintWriter out = response.getWriter();
					out.print(tof);
					System.out.println("확인 = "+tof);
				}
				
				
				if(nextpage != null) {
					response.sendRedirect(nextpage);
				}
		
	}

}
