import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UploadService")
public class UploadService extends HttpServlet {
     protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 	response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			
    	 
    	  String fileName = request.getParameter("file");
          out.println(fileName);
          System.out.println(fileName);
          ServletContext context = getServletContext(); //���ø����̼ǿ� ���� ������ ServletContext ��ü�� ���� ��. 
          String saveDir = context.getRealPath("Upload"); //�����θ� ������
          out.println("������ >> " + saveDir);
          System.out.println("������ >> " + saveDir);
         
     }
}

