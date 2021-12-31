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
		System.out.println("�Խñۻ����ϷἭ��");

		int seq = Integer.parseInt(request.getParameter("goodsseq"));
		System.out.println("�Խñۻ�������_seq = "+seq);
		
		goodsDTO dto = new goodsDTO(seq);
		goodsDAO dao = new goodsDAO();
		
		
		int cnt = dao.Postdel(dto);
		String page="";
		
		if(cnt>0) {
			System.out.println("�Խñۻ������񽺼���");
			page="index.jsp";

		}else {
			System.out.println("�Խñۻ������񽺽���");
			page="shop-detail.jsp";
		}
		
		return page;
	}

}
