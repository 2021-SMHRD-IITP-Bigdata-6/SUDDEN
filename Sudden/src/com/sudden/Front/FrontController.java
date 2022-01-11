package com.sudden.Front;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.inter.Command;
import com.inter.Login_Command;
import com.sudden.DAO.goodsDAO;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.goodsDTO;
import com.sudden.DTO.memberDTO;
import com.sudden.Member.DeleteInterService;
import com.sudden.Member.JoinService;
import com.sudden.Member.LoginService;
import com.sudden.Member.LogoutService;
import com.sudden.Member.PostdelService;
import com.sudden.Member.PwsearchServiec;
import com.sudden.Member.RegisteService;
import com.sudden.Member.SalcmpltService;
import com.sudden.Member.SearchService;
import com.sudden.Member.SearchgoodsService;
import com.sudden.Member.UpdateService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


				String uri = request.getRequestURI();		
				String path = request.getContextPath();		
				String command = uri.substring(path.length()+1);
				System.out.println("uri= "+uri);
				System.out.println("path= "+path);
				System.out.println("command= "+command);
				
				
				Login_Command lcom = null;
				Command com = null;
				String nextpage =null;
				
				

				if(command.equals("Joincon.do")) {					
					com = new JoinService();
					nextpage = com.execute(request, response);
					
				}else if(command.equals("Logincon.do")||command.equals("Logincon_grid.do")||command.equals("Logincon_detail.do")||command.equals("Logincon_kate.do")) {			
					lcom = new LoginService();// �����Ұ�
					System.out.println("�����com");
					
					System.out.println("1com = "+lcom);
					nextpage = lcom.execute(request, response, command);
						
					
				}else if(command.equals("Logoutcon.do")) {					
					com = new LogoutService();
					nextpage = com.execute(request, response);	
					
				}else if(command.equals("Search.do")) {					

					request.setCharacterEncoding("utf-8");

					String name = request.getParameter("search");				
					System.out.println("controll="+name);
					goodsDTO dto = new goodsDTO(name);	
					goodsDAO dao = new goodsDAO();
					ArrayList<goodsDTO> list = dao.Search(dto); //��ĥ�κ�
					System.out.println("list_contr0 "+list.get(0).getName());
					
					Gson gson = new Gson();
					String json = gson.toJson(list);
					
					response.setCharacterEncoding("utf-8");
					PrintWriter out = response.getWriter();
					out.print(json);		
					
				}else if(command.equals("Searchgoods.do")) {				
					com = new SearchgoodsService();			
					nextpage = com.execute(request, response);
				}

				else if(command.equals("check.do")) {
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
					System.out.println("Ȯ�� = "+tof);
				}

				else if(command.equals("UpdateCon.do")) {
					
					com = new UpdateService();
					nextpage = com.execute(request, response);
					
				}else if(command.equals("DeleteInter.do")) {
					
					com = new DeleteInterService();
					nextpage = com.execute(request, response);

				}else if(command.equals("Salcmplt.do")) {
					System.out.println("�ǸſϷ���Ʈ��");
					com = new SalcmpltService();
					nextpage = com.execute(request, response);
				}else if(command.equals("Postdel.do")) {
					System.out.println("�Խñۻ�����Ʈ��");
					com = new PostdelService();
					nextpage = com.execute(request, response);
				}else if(command.equals("delcheck.do")) {
					
					request.setCharacterEncoding("utf-8");
					String seq = request.getParameter("seq");
					System.out.println("����Ȯ��seq= "+seq);

					goodsDAO dao = new goodsDAO();
					boolean tof = dao.delcheck(seq);
					System.out.println("����Ȯ�� = "+tof);
					
					PrintWriter out = response.getWriter();
					out.print(tof);
					
				}else if(command.equals("pw_search.do")) {

					
					String id = request.getParameter("id");
					String email = request.getParameter("email");
					System.out.println("id="+id);
					System.out.println("email"+email);
					
					memberDAO dao = new memberDAO();
					memberDTO dto = new memberDTO(id, email, 0, 0);

					String pw_list = dao.pw_search(dto);
					System.out.println(pw_list);

					response.setCharacterEncoding("utf-8");
					PrintWriter out = response.getWriter();
					out.print(pw_list);
				

				}
				
				
				if(nextpage != null) {
					System.out.println(nextpage);
					response.sendRedirect(nextpage);
				
				}
			}
		}