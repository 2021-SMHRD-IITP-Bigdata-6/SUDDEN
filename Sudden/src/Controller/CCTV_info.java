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
		
		// DAO�� ���ؼ� DB���� ������ ���� list ������ ����
		DAO dao = new DAO();
		ArrayList<DTO> foodshop_list = dao.showInfo();
	
		// GSON : Java���� Json������ �Ľ��ϰ� �����ϱ� ���� ���ۿ��� ���� ���¼ҽ�
		// WebContent - WEB-INF - lib �� �־��ֱ�
		
		// new Gson() : null ���� �������� �ʴ´�.
		// new GsonBuilder().serializeNulls().create() : null ���� ����
		Gson gson = new GsonBuilder().serializeNulls().create();
		
		// GSON�� ����ؼ� ArrayList -> JSON���� ��ȯ
		// gson.toJson(��ȯ�� ���)
		String foodshop_json = gson.toJson(foodshop_list);
		
		// �����ϱ� ���� ���ڵ�����!
		response.setCharacterEncoding("UTF-8");
		
		// ��½�Ʈ���� �̿��ؼ� KakaoMap.jsp�� json ���� �����ֱ�!
		PrintWriter out = response.getWriter();
		
		// json ���� ����ϱ�!
		out.print(foodshop_json);
	}

}
