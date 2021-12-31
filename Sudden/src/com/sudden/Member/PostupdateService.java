package com.sudden.Member;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sudden.DAO.goodsDAO;
import com.sudden.DTO.goodsDTO;

@WebServlet("/PostupdateService")
public class PostupdateService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cnt = 0;
		String kate ="";
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();

		String fileName = request.getParameter("file");
		System.out.println(fileName);

		ServletContext context = getServletContext(); // ���ø����̼ǿ� ���� ������ ServletContext ��ü�� ���� ��. (������ �����θ� ���ϴ� �� �ʿ�)
	//	String saveDir = context.getRealPath("Upload");  �����θ� ������
		String saveDir = context.getRealPath("Upload"); // �����θ� ������
		System.out.println("������ >> " + saveDir);

		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "euc-kr";

		// saveDir: ���
		// maxSize: ũ������ ����
		// encoding: ���ڵ�Ÿ�� ����
		// new DefaultFileRenamePolicy(): ������ �̸��� ��� �ڵ����� (1),(2)..�ٰ� ����

		boolean isMulti = ServletFileUpload.isMultipartContent(request);// booleanŸ��. ??????
		if (isMulti) {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding,
					new DefaultFileRenamePolicy());
			goodsDAO dao = new goodsDAO();

			
			String name = multi.getParameter("title");
			String id =  multi.getParameter("id");
			String goodsseq =  multi.getParameter("goodsseq");
			String price1 = multi.getParameter("price");
			String content = multi.getParameter("content");
			String katenum = multi.getParameter("katenum");
			String img = multi.getFilesystemName("file");
			int price = Integer.valueOf(price1);
			
			int seq = Integer.parseInt(goodsseq);
			
			System.out.println("��ǰ��ȣ ="+seq);
			System.out.println("������ ="+name);
			System.out.println("���̵� = "+id);
			System.out.println("���� = "+price);
			System.out.println("���� ="+content);
			System.out.println("ī�װ� = "+katenum);
			System.out.println("�̹��� �̸� = "+img);
			
			
			if (katenum.equals("�����Ƿ�")) {
				kate = "0";
			} else if (katenum.equals("�����Ƿ�")) {
				kate = "1";
			} else if (katenum.equals("�Ź�")) {
				kate = "2";
			} else if (katenum.equals("����")) {
				kate = "3";
			} else if (katenum.equals("�ð�/�־�")) {
				kate = "4";
			} else if (katenum.equals("�мǿ�������")) {
				kate = "5";
			} else if (katenum.equals("������/����")) {
				kate = "6";
			} else if (katenum.equals("������/����")) {
				kate = "7";
			} else if (katenum.equals("����/�������")) {
				kate = "8";
			} else if (katenum.equals("Ű��Ʈ")) {
				kate = "9";
			} else if (katenum.equals("����/Ƽ��/����")) {
				kate = "10";
			} else if (katenum.equals("��Ƽ/�̿�")) {
				kate = "11";
			} else if (katenum.equals("����/���׸���")) {
				kate = "12";
			} else if (katenum.equals("��Ȱ/������ǰ")) {
				kate = "13";
			} else if (katenum.equals("���Ƶ�/���")) {
				kate = "14";
			} else if (katenum.equals("�ݷ�������ǰ")) {
				kate = "15";
			} else if (katenum.equals("��Ÿ")) {
				kate = "16";
			} else if (katenum.equals("���糪��")) {
				kate = "17";
			}
			goodsDTO dto = new goodsDTO(seq,kate, name, content, img, price,id);
			
				int result = dao.update(dto);
				
				String moveUrl = "";
				if (result > 0) {
					System.out.println("�ۼ����Ϸ�");
					goodsDTO gdto = dao.updatedetail(dto);
					System.out.println("�����Ѱ� �ִ�? = "+gdto);
					System.out.println("������ ������ = "+gdto.getName());
					session.setAttribute("gdto", gdto);
					moveUrl = "shop-details.jsp";
				} else {
					System.out.println("�ۼ�������");
					moveUrl = "Registe.jsp";
				}
				response.sendRedirect(moveUrl);
			}
		
		 else {
			System.out.println("�Ϲ� ���� form �Դϴ�.");
		}
	}
	
}
