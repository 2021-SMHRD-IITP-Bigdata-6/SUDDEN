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
						<a href="./index.jsp"><img style="widht: 170px; height: 150px;"
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
							<i class="fa fa-bars"></i> <span>?????? ????????????</span>
						</div>
						<ul>
							<li><a href="shop-kate.jsp?cat_num=0">????????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=1">????????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=2">??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=3">??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=4">??????/?????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=5">??????????????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=6">?????????/??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=7">?????????/??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=8">??????/????????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=9">?????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=10">??????/??????/??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=11">??????/??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=12">??????/????????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=13">??????/????????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=14">?????????/??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=15">??????????????????</a></li>
							<li><a href="shop-kate.jsp?cat_num=16">??????</a></li>
							<li><a href="shop-kate.jsp?cat_num=17">????????????</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="Searchgoods.do">
								<!-- ??????????????? Search.do -->
								<input type="text" id="search" name="search"
									placeholder="?????? ?????? ????????? ????????? ?????????">
								<button type="submit" class="site-btn" id="search_goods"
									onclick="search()">SEARCH</button>
							</form>
						</div>
						<div class="header__top__right__auth">
							<div class="hero__search__login">
								<!-- ?????????????????? -->

								<%
								if (dto == null) {
								%>

								<%
									} else {
								
								%>
								<!-- ????????? ??? ?????????-->
								<div class="login__box">
									<div class="profile">
										<span><%= dto.getId() %>??? ???????????????!</span>
									</div>
									<div class="icon">
										<div class="MyPage">
											<span onclick="location.href='Mypage.jsp'" style="cursor: pointer;"><i class="fa fa-user"></i></span>
										</div>
										<div class="Favorite">
											<span onclick="location.href='shoping-cart.jsp'" style="cursor: pointer;"><i class="fa fa-heart"></i></span>
										</div>
										<div class="Register">
											<span onclick="location.href='Registe.jsp'" style="cursor: pointer;"><i class="fa fa-plus-circle"></i></span>
										</div>
										<div class="Logout">
										<span onclick="location.href='Logoutcon.do'" style="cursor: pointer;">Logout</span>
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
						<h2>????????? ?????? ????????? ?????????</h2>
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
	String mid = dto.getId(); //??????
	System.out.println("??????");
    try{
    	System.out.println("??????1");
    	goodsseq =  Integer.parseInt(request.getParameter("goodsseq"));
    	System.out.println("??????????????? "+goodsseq);
    }catch(Exception e){
    	
    }
    System.out.println("??????????????? ?????? = "+goodsseq);
    
    
    //??????????????? ?????? ????????? ?????????
    if(goodsseq==-1){
    	System.out.println("??????2");
		gdto = (goodsDTO) session.getAttribute("gdto");
		size=0;

    }
    else{
    	System.out.println("??????3");
    	dao = new InterDAO();
    	gdto = new goodsDTO(goodsseq);
    	
    	
    	//arr = dao.addInter(gdto);
    	//int seq = arr.get(0).getSeq();
    	int seq = goodsseq;
    	//seq = goodsseq;
    	mid = dto.getId(); //??????
    	System.out.println("??????seq= "+seq);
    	System.out.println("??????id= "+mid);
    	igdto = new goodsDTO(seq,mid);
    	cnt = dao.InterUpload(igdto);
    	iarr = dao.searchInter(mid);
    	size= iarr.size();
    	if(cnt>0){
    		System.out.println("????????????");
    	}else{
    		System.out.println("????????????");
    	}
		System.out.println("?????????????????? = "+iarr.size());
    	
    	System.out.println("??????seq= "+goodsseq);
    	
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
									<th class="shoping__product">??????</th>
									<th>??????</th>
									<th>???</th>
									<th>????????????</th>
								</tr>
							</thead>
							<tbody>
								<!--  <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-1.jpg" alt="">
                                        <h5>????????? ????????? GOODS_NAME </h5>
                                    </td>
                                    
                                    <td class="shoping__cart__price">?????? GOODS_PRICE</td>
                                    
                                    <td class="shoping__cart__total">
                                        <i class="fa fa-heart"></i>
                                    </td>
                                    
                                    <td class="shoping__cart__item__close">
                                        <a href="chat.jsp" class="snip1535two">??????</a>
                                    </td>
                                </tr>-->
  <%
                              if(size<=0){
                            	  dao = new InterDAO();
                          		String cid=dto.getId();
                          		//String cid="smart";         		
                          		System.out.println("??????cid= "+cid);
                        		int check = dao.checkInter(cid);
                             	if(check<=0){ //?????????????????????
                            		out.print("<tr>");
  									out.print("<td class='shoping__cart__item' style='text-align: right;'>");
  									out.print("?????? ????????? ????????????.");
  									out.print("</td>");
  									out.print("<td style='text-align: left;'>");
  									out.print("</button><a class='snip1535' href='index.jsp'>??????????????????</a>");
  									out.print("</td>");
  									out.print("</tr>");
                              	}else{ //????????? ??? ??? ?????? ???????????????  ?????? ??????
                                    
                                    
                                    int i=0;
                                    int j=0;
                                    String eid=dto.getId();
                                    arr = dao.searchInter(eid);
                                    size= arr.size();
       						     while(true){
       						    	int iseq = arr.get(j).getSeq();
    						    	System.out.println("???????????????iseq= "+iseq);
    						    	dao = new InterDAO();
    						    	marr = dao.addInter(iseq);
       						    	
       						     	out.print("<tr>");
       								out.print("<td class='shoping__cart__item'>");
       								out.print("<a href='shop-details.jsp?goodsseq=" + marr.get(i).getSeq() + "'> <img src='Upload/" + marr.get(i).getImg() + "'/></a>");//alt=''  ???????????? ?????? ??? ?????? ???????????? ??????
       								out.print("<h5><a href='shop-details.jsp?goodsseq="+marr.get(i).getSeq()+"'>"+marr.get(i).getName()+"</a></h5>");
       								out.print("</td>");
       								out.print("<td class='shoping__cart__price'>"+marr.get(i).getPrice()+"???</td>");
       								out.print("<td class='shoping__cart__total'>");
       								out.print("<a href='DeleteInter.do?delete_seq="+marr.get(i).getSeq()+"'>??????</a>");
       								out.print("</td>");
       								out.print("<td class='shoping__cart__item__close'>");
       								out.print("<a href='chat.jsp?goodsseq="+marr.get(i).getSeq()+"' class='snip1535two'>??????</a>");
       								out.print("</td>");
       								out.print("</tr>");
       								j++;
       	 							if(size==j) {
       									break;
       								}
       	 
       							 }
                              		
                              	}
                              }
                              else{ //??????????????? ???????????? ?????? ??????
                                
                                 int i=0;
                                 int j=0;
    							 
    							 System.out.println("??????size= "+size);
    						     while(true){
    						    	 
    						    	int iseq = iarr.get(j).getSeq();
    						    	System.out.println("????????? ??????iseq= "+iseq);	
		
    						    	int inter_ckeck = dao.inter_ckeck(iseq, mid);
      						    	System.out.println("?????????= "+inter_ckeck);
       								
      						    	//if(inter_ckeck == 0){									 
      						    	System.out.println("??????");
    						    	dao = new InterDAO();
    						    	arr = dao.addInter(iseq);
    						     	out.print("<tr>");
    								out.print("<td class='shoping__cart__item'>");
    								out.print("<img src='Upload/"+arr.get(i).getImg()+"'>");//alt=''  ???????????? ?????? ??? ?????? ???????????? ??????
    								out.print("<h5><a href='shop-details.jsp?goodsseq="+arr.get(i).getSeq()+"'>"+arr.get(i).getName()+"</a></h5>");
    								out.print("</td>");
    								out.print("<td class='shoping__cart__price'>"+arr.get(i).getPrice()+"</td>");
    								out.print("<td class='shoping__cart__total'>");
    								out.print("<a href='DeleteInter.do?delete_seq="+arr.get(i).getSeq()+"'>??????</a>");
    								out.print("</td>");
    								out.print("<td class='shoping__cart__item__close'>");
    								out.print("<a href='chat.jsp?goodsseq="+arr.get(i).getSeq()+"' class='snip1535two'>??????</a>");
    								out.print("</td>");
    								out.print("</tr>");
    								j++;
    	 							if(size==j) {
    									break;
    									}
    							 	}
      						 
                             	 }
                            //} 
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
						<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.jsp"><img style="width:170px; height:150px;" src="img/logo2.jpg" alt=""></a>
							<ul>
							<li style="color:#5D5D5D;">Address: ??????????????? ?????? ????????? 60</li>
							<li style="color:#5D5D5D;">Phone: 010-9274-8297</li>
                            <li style="color:#5D5D5D;">Email: jcm829700@naver.com</li>
						</ul>
						</div>
						<div class="updown" style="position:absolute; left:360px; top:0px; border: 1px solid #EAEAEA; width: 0.1px; height: 200px;"></div>
						<img style="width:800px;height:150px;position:absolute; left:450px; top:15px;"src="img/footerimg2.png"></img>
						
						
					</div>
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