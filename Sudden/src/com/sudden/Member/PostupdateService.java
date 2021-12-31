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

		ServletContext context = getServletContext(); // 어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨. (서버의 절대경로를 구하는 데 필요)
	//	String saveDir = context.getRealPath("Upload");  절대경로를 가져옴
		String saveDir = context.getRealPath("Upload"); // 절대경로를 가져옴
		System.out.println("절대경로 >> " + saveDir);

		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "euc-kr";

		// saveDir: 경로
		// maxSize: 크기제한 설정
		// encoding: 인코딩타입 설정
		// new DefaultFileRenamePolicy(): 동일한 이름일 경우 자동으로 (1),(2)..붙게 해줌

		boolean isMulti = ServletFileUpload.isMultipartContent(request);// boolean타입. ??????
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
			
			System.out.println("상품번호 ="+seq);
			System.out.println("글제목 ="+name);
			System.out.println("아이디 = "+id);
			System.out.println("가격 = "+price);
			System.out.println("내용 ="+content);
			System.out.println("카테고리 = "+katenum);
			System.out.println("이미지 이름 = "+img);
			
			
			if (katenum.equals("여성의류")) {
				kate = "0";
			} else if (katenum.equals("남성의류")) {
				kate = "1";
			} else if (katenum.equals("신발")) {
				kate = "2";
			} else if (katenum.equals("가방")) {
				kate = "3";
			} else if (katenum.equals("시계/주얼리")) {
				kate = "4";
			} else if (katenum.equals("패션엑세서리")) {
				kate = "5";
			} else if (katenum.equals("디지털/가전")) {
				kate = "6";
			} else if (katenum.equals("스포츠/레저")) {
				kate = "7";
			} else if (katenum.equals("차량/오토바이")) {
				kate = "8";
			} else if (katenum.equals("키덜트")) {
				kate = "9";
			} else if (katenum.equals("도서/티켓/문구")) {
				kate = "10";
			} else if (katenum.equals("뷰티/미용")) {
				kate = "11";
			} else if (katenum.equals("가구/인테리어")) {
				kate = "12";
			} else if (katenum.equals("생활/가공식품")) {
				kate = "13";
			} else if (katenum.equals("유아동/출산")) {
				kate = "14";
			} else if (katenum.equals("반려동물용품")) {
				kate = "15";
			} else if (katenum.equals("기타")) {
				kate = "16";
			} else if (katenum.equals("서든나눔")) {
				kate = "17";
			}
			goodsDTO dto = new goodsDTO(seq,kate, name, content, img, price,id);
			
				int result = dao.update(dto);
				
				String moveUrl = "";
				if (result > 0) {
					System.out.println("글수정완료");
					goodsDTO gdto = dao.updatedetail(dto);
					System.out.println("수정한거 있니? = "+gdto);
					System.out.println("수정한 글제목 = "+gdto.getName());
					session.setAttribute("gdto", gdto);
					moveUrl = "shop-details.jsp";
				} else {
					System.out.println("글수정실패");
					moveUrl = "Registe.jsp";
				}
				response.sendRedirect(moveUrl);
			}
		
		 else {
			System.out.println("일반 전송 form 입니다.");
		}
	}
	
}
