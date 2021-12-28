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
import com.google.gson.GsonBuilder;
import com.sudden.DAO.cctvDAO;
import com.sudden.DTO.cctvDTO;



@WebServlet("/cctv")
public class cctv extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String addr=request.getParameter("addr");
		System.out.println("90"+addr);
		cctvDTO dto=new cctvDTO(addr);
		
		cctvDAO dao =new cctvDAO();
		ArrayList<cctvDTO> cctv_list =dao.cctv_addr(dto);
		

		Gson gson = new GsonBuilder().serializeNulls().create();
		String cctv_json= gson.toJson(cctv_list);
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cctv_json);
	}

}
