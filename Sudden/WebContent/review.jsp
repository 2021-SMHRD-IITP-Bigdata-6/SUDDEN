<%@page import="com.sudden.DAO.memberDAO"%>
<%@page import="com.sudden.DTO.goodsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sudden.DAO.goodsDAO"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	<link href="css/styles.css" rel="stylesheet">
	<style>
    
    .td.shoping__cart__item {width: 600px; height: 261px;}
    .shoping__cart__table{background-color:white; width:700px; height:700px; position:absolute;left:200px; top:100px; padding:10px 30px 10px;}
    .footer{width:100%;position:absolute;top:2000px; }
    .review {width: 630px; height: 200px; background-color:white; border: 1px solid #ebebeb; padding: 10px 20px 10px;}
    .reviewer_name {width:50px; height:20px;}
    .reviewer_score {width: 600px; height:30px;}
    .reviewer_score_image {width:50px; height:10px;}
    .reviewer_product_link {width:350px; height:30px; border: 1px solid #ebebeb; text-align: left; margin-bottom: 10px;}
    .review_comment {width:350px; height:70px;}
    

	
	

    
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
   %>
</head>
<body>
	
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                    	<div class="review_title">리뷰 및 평점</div>
                    	<div class="review">
                    	    <div class="reviewer_name">
                    			<a class="name" href="#">김병관<!-- 리뷰 남기는 사람의 이름 --></a>
                    		</div>
                    		<div class="reviewer_score">
                    			<a class="name" href="#"><img src="#" class="reviewer_score_image"/><!-- 리뷰 남기는 사람의 점수 이미지 --></a>
                    		</div>
                    		<a class="reviewer_product">
                    			<button class="reviewer_product_link">블랙아웃 후디 L<!-- 리뷰 남기는 사람이 구매한 제품으로 이동 -->
                    			</button>
                    		</a>
                    		<div class="review_comment">
                    			친절하고 깔끔한 거래였습니다!
                    		</div>
                    	</div>

                    	<div class="review">dddd</div>
                    	<div class="review">dddd</div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- Shoping Cart Section End -->



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