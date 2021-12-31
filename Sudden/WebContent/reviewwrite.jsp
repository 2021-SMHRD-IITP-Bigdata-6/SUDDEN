<%@page import="com.sudden.DTO.tradeDTO"%>
<%@page import="com.sudden.DAO.tradeDAO"%>
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
    .images {display: block;margin: 0 auto; width: 200px; height: 200px; text-align: center;}
    
    .td.shoping__cart__item {width: 555px; height: 261px;}
   
    .footer{width:100%;position:absolute;top:2000px; }
    .shoping__cart__table table thead tr {
	border-bottom: 3px solid #ebebeb;
	}
	
	.tablein{ width : 1600px; height : 600px; margin-left: 100px;}
	
	.reviewin{ width: 600px; height: 200px; text-align: center; font-size: 15px; }
	
	.shoping__cart__table { background-color: white; width: 1800px; position: absolute; left: -300px; top: 250px; }
	.reviewrow{ width: 200px; text-align: center; font-size: 15px; padding: 25px;}

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
                        <table class="tablein" border="1px">
                            <thead>
                                <tr>
                                    <th class="shoping__product" style="font-size:30px; text-align:center;">제품이미지</th>
                                    <th style="font-size:30px;text-align:center;">제품명</th>
                                    <th style="font-size:30px;text-align:center;">리뷰등록</th>
                                    <th style="font-size:30px;text-align:center;">평점</th>
                                    <th style="font-size:30px;text-align:center;"></th>
                                </tr>
                            </thead>
                            <tbody>
   
    <% 
    tradeDAO tdao = new tradeDAO();
    
    
	int pseq = tdao.searchseq(dto);
	
	tradeDTO tdto = new tradeDTO(pseq);
	
	ArrayList<goodsDTO> arr = tdao.purchase(tdto);
	%>
	

							<tr>
								<td class='shoping__cart__item'>
									<img class='images' src=''><!-- Upload/ -->
								</td>
								<td class='shoping__cart__total' style='width:300px; text-align:center; font-size:15px;'>
									<h5>1111</h5>
								</td>
								<td class='reviewrow' style='width:200px; text-align:center; font-size:15px;'>
									<input class="reviewin">
								</td>
								<td class='shoping__cart__price' style='width:200px; text-align:center; font-size:15px;'>
									<select>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</td>
								<td class='shoping__cart__price' style='width:200px; text-align:center; font-size:15px;'>
									<a id='buttstyle' class='snip1535two'>리뷰등록</a>
								</td>
							</tr>

  
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- Shoping Cart Section End -->



    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>


</body>
</html>