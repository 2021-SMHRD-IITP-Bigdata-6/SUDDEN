<%@page import="com.sudden.DAO.InterDAO"%>
<%@page import="com.sudden.DAO.goodsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sudden.DTO.goodsDTO"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ogani | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
	<%
		memberDTO dto = (memberDTO) session.getAttribute("dto");
	%>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<!-- Humberger End -->

	<!-- Header Section Begin -->
	<header class="header">

		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="header__logo">
						<a href="./index.jsp"><img style="widht: 80px; height: 180px;"
							src="img/logo4.PNG" alt=""></a>
					</div>
				</div>
				<div class="humberger__open">
					<i class="fa fa-bars"></i>
				</div>
			</div>
	</header>
	<!-- Header Section End -->

	<!-- Hero Section Begin -->
	<section class="hero hero-normal">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>전체 카테고리</span>
						</div>
						<ul>
							<li><a href="#">여성의류</a></li>
							<li><a href="#">남성의류</a></li>
							<li><a href="#">신발</a></li>
							<li><a href="#">가방</a></li>
							<li><a href="#">시계/주얼리</a></li>
							<li><a href="#">패션엑세서리</a></li>
							<li><a href="#">디지털/가전</a></li>
							<li><a href="#">스포츠/레저</a></li>
							<li><a href="#">차량/오토바이</a></li>
							<li><a href="#">키덜트</a></li>
							<li><a href="#">도서/티켓/문구</a></li>
							<li><a href="#">뷰티/미용</a></li>
							<li><a href="#">가구/인테리어</a></li>
							<li><a href="#">생활/가공식품</a></li>
							<li><a href="#">유아동/출산</a></li>
							<li><a href="#">반려동물용품</a></li>
							<li><a href="#">기타</a></li>
							<li><a href="#">서든나눔</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="Searchgoods.do">
								<!-- 검색하는곳 Search.do -->
								<input type="text" id="search" name="search"
									placeholder="찾고 싶은 상품을 검색해 보세요">
								<button type="submit" class="site-btn" id="search_goods"
									onclick="search()">SEARCH</button>
							</form>
						</div>
						<div class="header__top__right__auth">
							<div class="hero__search__login">
								<!-- 로그인하는곳 -->

								<%
								if (dto == null) {
								%>

								<%
									} else {
								
								%>
								<!-- 로그인 후 아이콘-->
								<div class="login__box">
									<div class="profile">
										<span class="profile__picture"><i
											class="fa fa-user-circle fa-lg"></i></span> <span><%= dto.getId() %>님
											환영합니다!</span>
										<span><%= dto.getId() %>님 환영합니다!</span>
									</div>
									<div class="icon">
										<div class="MyPage">
											<span onclick="location.href='Mypage.jsp'"
												style="cursor: pointer;"><i class="fa fa-user"></i></span>
										</div>
										<div class="Favorite">
											<span onclick="location.href='shoping-cart.jsp'"
												style="cursor: pointer;"><i class="fa fa-heart"></i></span>
										</div>
										<div class="Register">
											<span onclick="location.href='Registe.jsp'"
												style="cursor: pointer;"><i class="fa fa-plus-circle"></i></span>
										</div>
										<div class="Logout">
											<span onclick="location.href='Logoutcon.do'"
												style="cursor: pointer;">Logout</span>
										</div>
									</div>
								</div>

								<%
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Breadcrumb Section Begin -->
	<section class="breadcrumb-section set-bg"
		style="background-color: #394aad;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>안전한 중고 직거래 플랫폼</h2>
						<h2>SUDDEN</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Breadcrumb Section End -->
	<%
    goodsDTO gdto = null;
    goodsDTO igdto = null;
	ArrayList<goodsDTO> arr = null;
	ArrayList<goodsDTO> iarr = null;
	ArrayList<goodsDTO> marr = null;
	InterDAO dao = null;
	int cnt=0;
	int goodsseq=-1;
	int size=0;
	int cn=0;
	System.out.println("관심");
    try{
    	System.out.println("관심1");
    	goodsseq =  Integer.parseInt(request.getParameter("goodsseq"));
    	System.out.println("관심받아옴 "+goodsseq);
    }catch(Exception e){
    	
    }
    System.out.println("관심이름이 머니 = "+goodsseq);
    
    
    //상품목록에 대한 번호가 없을때
    if(goodsseq==-1){
    	System.out.println("관심2");
		gdto = (goodsDTO) session.getAttribute("gdto");
		size=0;

    }
    else{
    	System.out.println("관심3");
    	dao = new InterDAO();
    	gdto = new goodsDTO(goodsseq);
    	
    	
    	//arr = dao.addInter(gdto);
    	//int seq = arr.get(0).getSeq();
    	int seq = goodsseq;
    	//seq = goodsseq;
    	String mid = dto.getId();
    	System.out.println("관심seq= "+seq);
    	System.out.println("관심id= "+mid);
    	igdto = new goodsDTO(seq,mid);
    	cnt = dao.InterUpload(igdto);
    	iarr = dao.searchInter(mid);
    	size= iarr.size();
    	if(cnt>0){
    		System.out.println("저장완료");
    	}else{
    		System.out.println("저장실패");
    	}
		System.out.println("관심받아오기 = "+iarr.size());
    	
    	System.out.println("관심seq= "+goodsseq);
    	
    	}
    
    	
    	
        
    	
    	
    	
    
    
    %>


	<!-- Shoping Cart Section Begin -->
	<section class="shoping-cart spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th class="shoping__product">상품</th>
									<th>가격</th>
									<th>찜</th>
									<th>연락하기</th>
								</tr>
							</thead>
							<tbody>
								<!--  <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-1.jpg" alt="">
                                        <h5>여기에 상품명 GOODS_NAME </h5>
                                    </td>
                                    
                                    <td class="shoping__cart__price">가격 GOODS_PRICE</td>
                                    
                                    <td class="shoping__cart__total">
                                        <i class="fa fa-heart"></i>
                                    </td>
                                    
                                    <td class="shoping__cart__item__close">
                                        <a href="chat.jsp" class="snip1535two">채팅</a>
                                    </td>
                                </tr>-->
  <%
                              if(size<=0){
                            	  dao = new InterDAO();
                          		String cid=dto.getId();
                          		//String cid="smart";         		
                          		System.out.println("관심cid= "+cid);
                        		int check = dao.checkInter(cid);
                             	if(check<=0){
                            		out.print("<tr>");
  									out.print("<td class='shoping__cart__item'>");
  									out.print("<img src=''>");//alt=''  이미지가 없을 때 안에 텍스트로 대체
  									out.print("<h5><a href='shop-details.jsp?goodsseq='></a></h5>");
  									out.print("</td>");
  									
  									out.print("<td class='shoping__cart__price'></td>");
  									out.print("<td class='shoping__cart__total'></td>");
  								
  									out.print("<td class='shoping__cart__item__close'>");
  									out.print("<a href='chat.jsp'></a>");
  									out.print("</td>");
  									out.print("</tr>");
                              	}else{
                                    
                                    
                                    int i=0;
                                    int j=0;
                                    String eid=dto.getId();
                                    arr = dao.searchInter(eid);
                                    size= arr.size();
       						     while(true){
       						    	int iseq = arr.get(j).getSeq();
    						    	System.out.println("관심iseq= "+iseq);
    						    	dao = new InterDAO();
    						    	marr = dao.addInter(iseq);
       						    	
       						     	out.print("<tr>");
       								out.print("<td class='shoping__cart__item'>");
       								out.print("<img src='Upload/"+marr.get(i).getImg()+"'>");//alt=''  이미지가 없을 때 안에 텍스트로 대체
       								out.print("<h5><a href='shop-details.jsp?goodsseq="+marr.get(i).getSeq()+"'>"+marr.get(i).getName()+"</a></h5>");
       								out.print("</td>");
       								out.print("<td class='shoping__cart__price'>"+marr.get(i).getPrice()+"</td>");
       								out.print("<td class='shoping__cart__total'>");
       								out.print("<a href='DeleteInter.do?delete_seq="+arr.get(j).getSeq()+"'>삭제</a>");
       								out.print("</td>");
       								out.print("<td class='shoping__cart__item__close'>");
       								out.print("<a href='chat.jsp' class='snip1535two'>채팅</a>");
       								out.print("</td>");
       								out.print("</tr>");
       								j++;
       	 							if(size==j) {
       									break;
       								}
       	 
       							 }
                              		
                              	}
                              }
                              else{
                              
                                 
                                 int i=0;
                                 int j=0;
    							 
    							 System.out.println("관심size= "+size);
    						     while(true){
    						    	int iseq = iarr.get(j).getSeq();
    						    	System.out.println("관심iseq= "+iseq);
    						    	dao = new InterDAO();
    						    	arr = dao.addInter(iseq);
    						     	out.print("<tr>");
    								out.print("<td class='shoping__cart__item'>");
    								out.print("<img src='Upload/"+arr.get(i).getImg()+"'>");//alt=''  이미지가 없을 때 안에 텍스트로 대체
    								out.print("<h5><a href='shop-details.jsp?goodsseq="+arr.get(i).getSeq()+"'>"+arr.get(i).getName()+"</a></h5>");
    								out.print("</td>");
    								out.print("<td class='shoping__cart__price'>"+arr.get(i).getPrice()+"</td>");
    								out.print("<td class='shoping__cart__total'>");
    								out.print("<a href='DeleteInter.do?delete_seq="+iarr.get(j).getSeq()+"'>삭제</a>");
    								out.print("</td>");
    								out.print("<td class='shoping__cart__item__close'>");
    								out.print("<a href='chat.jsp' class='snip1535two'>채팅</a>");
    								out.print("</td>");
    								out.print("</tr>");
    								j++;
    	 							if(size==j) {
    									break;
    								}
    	 
    							 }
                              }
    						  %>


							</tbody>
						</table>
					</div>
				</div>
			</div>

		</div>
	</section>
	<!-- Shoping Cart Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.jsp"><img
								style="width: 230px; height: 200px;" src="img/logo2.jpg" alt=""></a>
						</div>
						<ul>
							<li>Address: 광주광역시 남구 송암로 60</li>
							<li>Phone: 000-0000-0000</li>
							<li>Email: jcm829700@naver.com</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</footer>
	<!-- Footer Section End -->

	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>