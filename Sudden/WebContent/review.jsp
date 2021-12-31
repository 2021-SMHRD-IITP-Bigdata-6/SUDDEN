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
	<link rel="stylesheet" type="text/css" href="css/styles.css" />
	
	<style>
    
    .td.shoping__cart__item {width: 600px; height: 261px;}
    .shoping__cart__table{background-color:white; width:700px; height:800px; position:absolute;left:200px; top:100px; padding:10px 30px 10px;}
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
	<img src="http://icons.iconarchive.com/icons/hopstarter/square-flags/16/South-Korea-Flag-icon.png">
    <!-- Shoping Cart Section Begin -->
    <section style="position:absolute; left:260px;">
    					<div class="shoping__cart__table">
                    	<div class="review_title" style="font-size:30px; backgroung-color:white;" >리뷰 및 평점</div><br>
                    	<div class="review">
                    		<div class="review1">
                    			<div class="review2">                    			
		                    	    <div class="reviewer_name">
		                    			<span class="name">이름 : <!-- 판매자의 이름 --></span>
		                    		</div>
		                    		<div class="reviewer_product_name">
		                    			<span class="name">제품 이름 : <!-- 판매한 제품 --></span>
		                    		</div>
                    			</div>
	                    		<div class="emo">평점</div>
                    		</div>
                    		
<!-- 							<div class="text_ul_wrap">
						 	 	<<a href="javascript:;"><strong>점수 입력</strong></a>
						  	 	<ul class="ul_select_style">
							    	<li><img style="width:20px;height:20px;" src="img/1point.png" value="test">1</li>
							    	<li><img style="width:20px;height:20px;" src="img/2point.png">2</li>
								    <li><img style="width:20px;height:20px;" src="img/3point.png">3</li>
								    <li><img style="width:20px;height:20px;" src="img/4point.png">4</li>
								    <li><img style="width:20px;height:20px;" src="img/5point.png">5</li>
						  	 	</ul>
							</div> -->


							<script>
							var _select_title = $(".text_ul_wrap > a");
							$('<div class="select_icon"></div>').insertAfter(_select_title);
							
							_select_title.click(function () {
							  $(".ul_select_style").toggleClass("active");
							  $(".select_icon").toggleClass("active");
							});
							
							$(".ul_select_style > li").on('click', function () {
							  var _li_value = $(this).text();
							  var _li_img = $(this).find('img').attr('src');
							  var content = '<img style="width:20px;height:20px;" src="'+_li_img+'">'+_li_value;
							  _select_title.html(content);
							  $(".ul_select_style").removeClass("active");
							  $(".select_icon").toggleClass("active");
							});
							$("body").click(function (e) {
							  if($(".ul_select_style").hasClass("active")){
							    if(!$(".text_ul_wrap").has(e.target).length){
							      $(".ul_select_style").removeClass("active");
							      $(".select_icon").removeClass("active");
							    };
							  }
							})</script>

                    		<div class="review_comment">
                    			<div class="review_comment_box"></div>
                    				<p><!-- 리뷰 코멘트 --></p>
                    		</div>
                    	</div>
                    	<div class="review">
                    		<div class="review1">
                    			<div class="review2">                    			
		                    	    <div class="reviewer_name">
		                    			<span class="name">이름 : <!-- 판매자의 이름 --></span>
		                    		</div>
		                    		<div class="reviewer_product_name">
		                    			<span class="name">제품 이름 : <!-- 판매한 제품 --></span>
		                    		</div>
                    			</div>
	                    		<div class="emo">평점</div>
                    		</div>
<!-- 							<div class="text_ul_wrap">
						 	 	<<a href="javascript:;"><strong>점수 입력</strong></a>
						  	 	<ul class="ul_select_style">
							    	<li><img style="width:20px;height:20px;" src="img/1point.png" value="test">1</li>
							    	<li><img style="width:20px;height:20px;" src="img/2point.png">2</li>
								    <li><img style="width:20px;height:20px;" src="img/3point.png">3</li>
								    <li><img style="width:20px;height:20px;" src="img/4point.png">4</li>
								    <li><img style="width:20px;height:20px;" src="img/5point.png">5</li>
						  	 	</ul>
							</div> -->


							<script>
							var _select_title = $(".text_ul_wrap > a");
							$('<div class="select_icon"></div>').insertAfter(_select_title);
							
							_select_title.click(function () {
							  $(".ul_select_style").toggleClass("active");
							  $(".select_icon").toggleClass("active");
							});
							
							$(".ul_select_style > li").on('click', function () {
							  var _li_value = $(this).text();
							  var _li_img = $(this).find('img').attr('src');
							  var content = '<img style="width:20px;height:20px;" src="'+_li_img+'">'+_li_value;
							  _select_title.html(content);
							  $(".ul_select_style").removeClass("active");
							  $(".select_icon").toggleClass("active");
							});
							$("body").click(function (e) {
							  if($(".ul_select_style").hasClass("active")){
							    if(!$(".text_ul_wrap").has(e.target).length){
							      $(".ul_select_style").removeClass("active");
							      $(".select_icon").removeClass("active");
							    };
							  }
							})</script>
                    		<div class="review_comment">
                    			<div class="review_comment_box"></div>
                    				<p><!-- 리뷰 코멘트 --></p>
                    		</div>
                    	</div>
						<div class="review">
                    	       <div class="review1">
                    			<div class="review2">                    			
		                    	    <div class="reviewer_name">
		                    			<span class="name">이름 : <!-- 판매자의 이름 --></span>
		                    		</div>
		                    		<div class="reviewer_product_name">
		                    			<span class="name">제품 이름 : <!-- 판매한 제품 --></span>
		                    		</div>
                    			</div>
	                    		<div class="emo">평점</div>
                    		</div>
<!-- 							<div class="text_ul_wrap">
						 	 	<<a href="javascript:;"><strong>점수 입력</strong></a>
						  	 	<ul class="ul_select_style">
							    	<li><img style="width:20px;height:20px;" src="img/1point.png" value="test">1</li>
							    	<li><img style="width:20px;height:20px;" src="img/2point.png">2</li>
								    <li><img style="width:20px;height:20px;" src="img/3point.png">3</li>
								    <li><img style="width:20px;height:20px;" src="img/4point.png">4</li>
								    <li><img style="width:20px;height:20px;" src="img/5point.png">5</li>
						  	 	</ul>
							</div> -->


							<script>
							var _select_title = $(".text_ul_wrap > a");
							$('<div class="select_icon"></div>').insertAfter(_select_title);
							
							_select_title.click(function () {
							  $(".ul_select_style").toggleClass("active");
							  $(".select_icon").toggleClass("active");
							});
							
							$(".ul_select_style > li").on('click', function () {
							  var _li_value = $(this).text();
							  var _li_img = $(this).find('img').attr('src');
							  var content = '<img style="width:20px;height:20px;" src="'+_li_img+'">'+_li_value;
							  _select_title.html(content);
							  $(".ul_select_style").removeClass("active");
							  $(".select_icon").toggleClass("active");
							});
							$("body").click(function (e) {
							  if($(".ul_select_style").hasClass("active")){
							    if(!$(".text_ul_wrap").has(e.target).length){
							      $(".ul_select_style").removeClass("active");
							      $(".select_icon").removeClass("active");
							    };
							  }
							})</script>
                    		<div class="review_comment">
                    			<div class="review_comment_box"></div>
                    				<p><!-- 리뷰 코멘트 --></p>
                    		</div>
                    	</div>
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