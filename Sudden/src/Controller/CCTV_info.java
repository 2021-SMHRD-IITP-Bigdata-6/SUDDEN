package Controller;

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

import Model.DAO;
import Model.DTO;

@WebServlet("/CCTV_info")
public class CCTV_info extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Controller : Foodshop_info");
		
		// DAO를 통해서 DB에서 음식점 정보 list 가지고 오기
		DAO dao = new DAO();
		ArrayList<DTO> foodshop_list = dao.showInfo();
	
		// GSON : Java에서 Json파일을 파싱하고 생성하기 위해 구글에서 만든 오픈소스
		// WebContent - WEB-INF - lib 에 넣어주기
		
		// new Gson() : null 값은 포함하지 않는다.
		// new GsonBuilder().serializeNulls().create() : null 값도 포함
		Gson gson = new GsonBuilder().serializeNulls().create();
		
		// GSON을 사용해서 ArrayList -> JSON으로 변환
		// gson.toJson(변환할 대상)
		String foodshop_json = gson.toJson(foodshop_list);
		
		// 응답하기 전에 인코딩진행!
		response.setCharacterEncoding("UTF-8");
		
		// 출력스트림을 이용해서 KakaoMap.jsp로 json 파일 보내주기!
		PrintWriter out = response.getWriter();
		
		// json 파일 출력하기!
		out.print(foodshop_json);
	}

}
