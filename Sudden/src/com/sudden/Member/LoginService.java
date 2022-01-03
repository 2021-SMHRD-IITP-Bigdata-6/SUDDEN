package com.sudden.Member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inter.Login_Command;
import com.sudden.DAO.memberDAO;
import com.sudden.DTO.memberDTO;

public class LoginService implements Login_Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response, String command) throws ServletException, IOException  {
		
		request.setCharacterEncoding("utf-8");
		


		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String seq = request.getParameter("goodsseq");
		String sdto = request.getParameter("sdto");
		String cat_num = request.getParameter("cat_num");

		
		
		System.out.println("로그인_seq= "+seq);
		System.out.println("로그인_sdto= "+sdto);
		System.out.println("로그인_cat_num= "+cat_num);
		
		HttpSession session = request.getSession();
		ArrayList<String> arr = new ArrayList<String>();// 고칠 부분
		arr.add("0");
		System.out.println("arr = "+arr.get(0));
		System.out.println("command = "+command);
		
		memberDTO dto = new memberDTO(id, pw, 0);	
		memberDAO dao = new memberDAO();

		dto=dao.Login(dto);
		
		String nextpage="";
				
		if (dto!=null) {
			System.out.println("로그인 완료");
			session.setAttribute("dto", dto);
			if(command.equals("Logincon.do")) {
				nextpage = "index.jsp";
			}else if(command.equals("Logincon_grid.do")) {
				nextpage = "shop-grid.jsp?sdto="+sdto;
				
			}else if(command.equals("Logincon_kate.do")) {
				nextpage = "shop-kate.jsp?cat_num="+cat_num;
					
			}
			else if(command.equals("Logincon_detail.do")) {
				if(seq.equals("null")) {
					nextpage = "index.jsp";
				}else {
					nextpage = "shop-details.jsp?goodsseq="+seq;
				}

			}
			
		} else {
			System.out.println("로그인 실패");
			nextpage = "log-in.jsp";
		}
		return nextpage;
	}

}
