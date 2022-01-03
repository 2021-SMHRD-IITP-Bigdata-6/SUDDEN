<%@page import="com.sudden.DAO.tradeDAO"%>
<%@page import="com.sudden.DTO.tradeDTO"%>
<%@page import="com.sudden.DAO.memberDAO"%>
<%@page import="com.sudden.DTO.goodsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sudden.DAO.goodsDAO"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Tivo is a HTML landing page template built with Bootstrap to help you crate engaging presentations for SaaS apps and convert visitors into users.">
    <meta name="author" content="Inovatik">

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/styles.css" />
	
	<style>
    
    .td.shoping__cart__item {width: 600px; height: 261px;}
    .shoping__cart__table{z-index: 20; padding-top:100px; width: 700px; height: 100%; margin: 0 auto; background-color:white;padding-left:30px;}
    .footer{width:100%;position:absolute;top:2000px; }
    .review {width: 630px; height: 230px; background-color:white; border: 1px solid #ebebeb; padding: 10px 20px 10px; margin-bottom: 20px; }
    .review1 {display: flex; justify-content: space-between; margin-bottom: 10px;}
    .review2 {display: flex; flex-direction:column;}
    .reviewer_name .reviewer_product_name {width:350px; height:30px; border: 1px solid #ebebeb; margin-bottom:10px;}
    .emo {width: 100px; height:60px; background-color: white; border: 1px solid; margin-bottom:10px; position:relative; right:30px;}
    
    .review_comment {width:350px; height:70px;}
    .review_comment_box {width:555px; height:130px; border: 1px solid;}
    
	 ul, li{list-style:none; margin:0; padding:0}
	.text_ul_wrap{margin:0 auto; width:240px; position: relative; right: 150px; border:1px solid #000; text-align: left}
	.text_ul_wrap a{color:#000; line-height: 34px; display: block; padding: 0 20px 0 10px; text-decoration:none}
	.select_icon{display: block; content: ''; clear: both; position:absolute; right:10px; top:12px; width: 0; height:0; border-left:6px solid transparent; border-right:6px solid transparent; border-top:12px solid #000; border-bottom:none;}
	.select_icon.active{border-bottom:12px solid #000; border-top:none;}
	.ul_select_style{position: absolute; width: 242px; left: -1px; display: none;}
	.ul_select_style.active{display: block}
	.ul_select_style li{line-height: 34px; border: 1px solid #000; text-align: left; padding-left: 10px; cursor: pointer;}
	.ul_select_style li + li{border-top:none;}
	.ul_select_style li:hover{background: rgba(0,0,0,0.2)}
	
	.rating{ width: 70px; height: 50px;margin: 4px;position: absolute;right: 10px;}
	    
    </style>
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
    <script src="jquery-3.6.0.min.js"></script>
   
	<body>
	<body data-spy="scroll" data-target=".fixed-top" style="background-color:#394aad;">
    
    <!-- Preloader -->
	<div class="spinner-wrapper">
        <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div>
    </div>
    <!-- end of preloader -->
    

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container">

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Tivo</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="index.jsp">SUDDEN</a> 
            
            <!-- Mobile Menu Toggle Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-awesome fas fa-bars"></span>
                <span class="navbar-toggler-awesome fas fa-times"></span>
            </button>
            <!-- end of mobile menu toggle button -->

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    </li>
                    <li class="nav-item">
                    </li>
                    <li class="nav-item">
                    </li>

                    <!-- Dropdown Menu -->          
                    <li class="nav-item dropdown">
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <div class="dropdown-items-divide-hr"></div>
                            <div class="dropdown-items-divide-hr"></div>   
                        </div>
                    </li>
                    <!-- end of dropdown menu -->
                    <li class="nav-item">    
                    </li>
                </ul>
                <span class="nav-item">
                    <a class="btn-outline-sm" href="Mypage.jsp" id="back">돌아가기</a>
                </span>
            </div>
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
		<%
			memberDTO dto = (memberDTO) session.getAttribute("dto");
			goodsDTO gdto = new goodsDTO(dto.getId(),0,0);
			goodsDAO gdao = new goodsDAO();
			
			tradeDTO tdto = null;
			tradeDAO tdao = new tradeDAO();
			
			ArrayList<goodsDTO> garr = gdao.reseq(dto);
			ArrayList<tradeDTO> tarr = null;
			if(garr.size()<=0){
				
			}else{
				for(int i=0; i<garr.size(); i++){
					tdto = new tradeDTO(garr.get(i).getSeq());
					tarr=tdao.reseq(tdto);
				}
			}
					
		%>
</head>
<body>
	<img src="http://icons.iconarchive.com/icons/hopstarter/square-flags/16/South-Korea-Flag-icon.png">
    <!-- Shoping Cart Section Begin -->
    <section>
    	
    					<div class="shoping__cart__table">
                    	<div class="review_title" style="font-size:30px; backgroung-color:white;" >리뷰 및 평점</div><br>
                    	
                    	<%
                    		out.print("<div class='review'>"); 
                    			out.print("<div class='review1'>"); 
                    				out.print("<div class='review2'>"); 
                    				
                    				if(tarr.size()<0){
                    					
                    				}else{
                    					for(int i=0; i<tarr.size(); i++){
                    						System.out.println("리뷰개수 = "+ tarr.size());
                    						out.print("<div class='reviewer_name'>");
                    						out.print("<span class='name'>이름 : "+tarr.get(i).getId()+"</div>");
                    						out.print("<div class='reviewer_product_name'>");
                    						out.print("<span class='name'>게시글 : "+garr.get(i).getName()+"</div>");
                    						out.print("</div>");
                    						out.print("<div class='emo'><img class='rating' src='img/"+tarr.get(i).getRating()+"point.png'></div>");
                    						out.print("</div>");
                    						out.print("<div class='review_comment'>");
                    						out.print("<div class='review_comment_box'><p>"+tarr.get(i).getReview()+"</p></div>");
                    						out.print("</div>");
                    						out.print("</div>");
                    					}
                    				}
                    	%>
	</div>
    </section>
    <!-- Shoping Cart Section End -->



    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    
	<script src="js/jquery.dd.min.js"></script>
    


</body>
</html>