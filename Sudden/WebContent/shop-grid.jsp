<%@page import="com.sudden.DAO.goodsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sudden.DAO.memberDAO"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@page import="com.sudden.DTO.goodsDTO"%>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.ResultSet"%>


	
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
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

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
<style>
.col-lg-4 {
    flex-grow: 0;
    flex-shrink: 0;
    flex-basis: 25%;
    max-width: 25%;
}
.row {
    display: -ms-flexbox;
    display: flex;
    flex-wrap: wrap;
    margin-right: -200px;
    margin-left: -15px;
}

</style>

<body>

	<%
		memberDTO dto = (memberDTO) session.getAttribute("dto");
	int num = 0;
	%>
	

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

  

    <!-- Header Section Begin -->
    <header class="header">

        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.jsp"><img style="width:190px; height:150px;" src="img/logo4.PNG" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                  
                </div>
                <div class="col-lg-3">
				<!-- ????????? ??? ??? ????????? ??????????????? -->
				
				<!--<%if (dto == null) {
				  } else {
					  if (dto.getId().equals("admin")) {%>
						   ????????? ?????? ??????  
				    <%}%>
					  <div class="header__cart">
					<ul>
						<li><a href="Registe.html"><i class="fa fa-registered"></i></a></li>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
					</ul>
					<div class="header__cart__price">
						item: <span>$150.00</span>
					</div>
				</div>
				  <%}%>-->	
			</div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
    <%
                    String name = request.getParameter("search");// ????????? ?????? ?????? ????????????
                    
                    int change_num = 0;
                    try{
	                    change_num = Integer.parseInt(request.getParameter("change_num"));
                    }catch(Exception e){
                    	
                    }
                    
                    int cat_num = 0;
                    try{
	                    
	                    cat_num = Integer.parseInt(request.getParameter("cat_num"));
                    }catch(Exception e){
                    	
                    }
                    
                    int change_kate = 0;
					try{
	                    
						change_kate = Integer.parseInt(request.getParameter("change_kate"));
                    }catch(Exception e){
                    	
                    }
                    System.out.println("change_num= "+change_num);
                    System.out.println("change_kate= "+change_kate);
                    // ????????? ????????? ?????? ????????? ??????????????? ????????? ?????????????????? ?????????????????????,
                    // Controller?????? ???????????? ????????? ?????????????????????? ?????? ???????????? ????????????. ????????? ????????? ?????????
                    
                    		
                    goodsDTO sdto = (goodsDTO)session.getAttribute("sdto");//????????? ????????? ?????????? ????????? ???????????? ????????? ???????????? ?????? ?????? ???????????? ?????? ???????????????
                	System.out.print("sdto= "+sdto);
             		goodsDAO dao = new goodsDAO();
             		String img ="";
             		String title ="";
             		String price ="";%>

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>?????? ????????????</span>
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
                            <form action="Searchgoods.do"><!-- ??????????????? Search.do -->
                                <input type="text" id="search" name="search" placeholder="?????? ?????? ????????? ????????? ?????????">
                                <button type="submit" class="site-btn" id="search_goods">SEARCH</button>
                            </form>
                        </div>
                        <div class="header__top__right__auth">


							<div class="hero__search__login">
								<!-- ?????????????????? -->

								<%
								if (dto == null) {//?????? ???????????? ?????? name?????? ????????????
								%>
								<a  href="log_in_grid.jsp?search=<%=sdto.getName()%>"><i class="fa fa-user">Login</i></a>
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
    <section class="breadcrumb-section set-bg" style="background-color:#394aad;">
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

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">

            <div class="row" style="width:1500px;">
				<div class="col-lg-9 col-md-7">

            <div class="row">

                <div class="col-lg-9 col-md-7">

                    <!--<div class="filter__item">
                        <div class="row">                     
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>15</span> Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>-->
                    <div class="row" id="row1">
                    
             	<%
             		
             		
             		
          

                    ArrayList<goodsDTO> arr = null;
                    
                    if(sdto!=null){   
                       // ?????? ????????? ?????? ????????? ?????? ????????? ????????? ?????????? ???
                    		   
                       // ????????? ????????? ???????????? ???????????? ???????????? ????????? ??????????????? request??? ????????? ????????? ????????????? ??????? ????????? ????????? ??????????????? ??????????
                       System.out.println("sdto_name= "+sdto.getName());
                       goodsDTO gdto = new goodsDTO(sdto.getName());
                       arr = dao.Searchgoods(gdto);
                       System.out.print("arr.size = "+arr.size());
                       int size=arr.size();//36
                       int i=change_num;//40
                       int z=0;
                       while(i!=size){
                       String status = arr.get(i).getStatus();
                       out.print("<div class='col-lg-4 col-md-6 col-sm-6'>");
                       out.print("<div class='product__item'>");//Upload/191.jpg
                       out.print("<div class='product__item__pic set-bg'><a href='shop-details.jsp?goodsseq=" + arr.get(i).getSeq() + "'> <img src='Upload/" + arr.get(i).getImg() + "'/></a>");
                       out.print("<ul class='product__item__pic__hover'>");
                       if(dto==null){
                    	   out.print("<li><a href='log-in_details.jsp'><i class='fa fa-heart'></i></a></li>");
                       }else{
                    	   out.print("<li><a href='shoping-cart.jsp?goodsseq="+arr.get(i).getSeq()+"'><i class='fa fa-heart'></i></a></li>");
                       }
                       out.print("</ul>");
                       out.print("</div>");
                       out.print("<div class='product__item__text'>");
                       out.print("<h6><a href='shop-details.jsp?goodsseq="+arr.get(i).getSeq()+"'>"+arr.get(i).getName()+"</a></h6>");
                       if(status.equals("Y")){
                    	   out.print("<h5>????????????</h5>");
                       }else{
                    	   out.print("<h5>"+arr.get(i).getPrice()+"???</h5>");
                       }
                       out.print("</div>");
                       out.print("</div>");
                       out.print("</div>");
                       i++;
                       z++;
       					
       						if(z==20){
       							break;
       						}
       					
       				}                      


                    }else{
                 
 //                      arr = dao.SearchAll();
 //                      int size=arr.size();
 //                      int i=change_num;
 //                      while(i!=size){
 //                      out.print("<div class='col-lg-4 col-md-6 col-sm-6'>");
 //                      out.print("<div class='product__item'>");//Upload/191.jpg
 //                      out.print("<div class='product__item__pic set-bg' data-setbg='Upload/"+arr.get(i).getImg()+"'>");
 //                      out.print("<ul class='product__item__pic__hover'>");
  //                     if(dto==null){
  //                  	   out.print("<li><a href='log-in_details.jsp'><i class='fa fa-heart'></i></a></li>");
  //                     }else{
   //                 	   out.print("<li><a href='shoping-cart.jsp?goodsseq="+arr.get(i).getSeq()+"'><i class='fa fa-heart'></i></a></li>");
  //                     }
  //                     out.print("</ul>");
  //                     out.print("</div>");
  //                     out.print("<div class='product__item__text'>");
  //                     out.print("<h6><a href='shop-details.jsp?goodsname="+arr.get(i).getName()+"'>"+arr.get(i).getName()+"</a></h6>");
  //                     out.print("<h5>"+arr.get(i).getPrice()+"</h5>");
   //                    out.print("</div>");
  //                     out.print("</div>");
   //                    out.print("</div>");
    //                   i++;
  //     					
  //     						if(i==20){
  //     							break;
  //     						}
   //    					
   //    				}

                    }

			%>
                </div>
                <div class="product__pagination">    
     <%
     
     int size= arr.size();
	 int cout = size/20;
	 if(size%20==0){
		 cout=cout+1;
	 }else{
		 cout=cout+2;
	 }
	 int i=1;
	 int tw=0;
	 System.out.println("?????? ="+cout);
     while(true){
    	 out.print("<a href='shop-grid.jsp?change_num="+tw+"'>"+i+"</a>");
    	 
    	 i++;
    	 tw=tw+20;
    	 
    	 if(cout==i) {
    		 break;
    	 }
    	 
     }
		%></div>
            </div>
        </div>
                       </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

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
            <div class="row">
                <div class="col-lg-12">
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
    <script src="jquery-3.6.0.min.js"></script>




</body>
</html>