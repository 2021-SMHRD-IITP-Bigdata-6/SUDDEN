package com.sudden.Member;

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
import com.sudden.DAO.goodsDAO;
import com.sudden.DTO.goodsDTO;


public class PostdelService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		System.out.println("게시글삭제완료서비스");

		int seq = Integer.parseInt(request.getParameter("goodsseq"));
		System.out.println("게시글삭제서비스_seq = "+seq);
		
		goodsDTO dto = new goodsDTO(seq);
		goodsDAO dao = new goodsDAO();
		
		
		int cnt = dao.Postdel(dto);
		String page="";
		
		if(cnt>0) {
			System.out.println("게시글삭제서비스성공");
			page="index.jsp";

		}else {
			System.out.println("게시글삭제서비스실패");
			page="shop-detail.jsp";
		}
		
		return page;
	}

}
