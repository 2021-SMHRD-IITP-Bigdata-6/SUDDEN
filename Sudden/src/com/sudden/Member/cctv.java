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
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.sudden.DAO.cctvDAO;
import com.sudden.DTO.cctvDTO;



@WebServlet("/cctv")
public class cctv extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String addr=request.getParameter("addr");
		System.out.println("90addr"+addr);
		cctvDTO dto=new cctvDTO(addr);
		
		cctvDAO dao =new cctvDAO();
		ArrayList<cctvDTO> cctv_list =dao.cctv_addr(dto);//주소들이 담긴 arryList
		
		
		//GsonBuilder().serializeNulls().create()
		//Gson gson = new Gson();
		
		JsonArray jarray = new JsonArray();
		for(int i=0;i<cctv_list.size();i++) {
			JsonObject json = new JsonObject();
			json.addProperty("addr", cctv_list.get(i).getCctv());
			jarray.add(json);
		}
		
		//String cctv_json= gson.toJson(cctv_list);
		//System.out.println(cctv_json);
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(jarray);
	}

}
