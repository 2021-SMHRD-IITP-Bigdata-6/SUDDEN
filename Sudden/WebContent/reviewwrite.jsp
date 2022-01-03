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
	.snip1535two {
	    background-color: #394aad;
	    border: none;
	    color: #ffffff;
	    display: inline-block;
	    font-family: 'BenchNine', Arial, sans-serif;
	    font-size: 25px;
	    font-size: 1em;
	    line-height: 1em;
	    outline: none;
	    padding: 3px 3px 3px;
	    position: relative;
	    text-transform: uppercase;
	   
}
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

    <% 
    
    int goodsseq=0;
    System.out.println("리뷰");
      try{
         System.out.println("리뷰1");
         goodsseq =  Integer.parseInt(request.getParameter("goodsseq"));
         System.out.println("받아옴 "+goodsseq);
      }catch(Exception e){
         
      }
    
    tradeDAO gdao = new tradeDAO();
    tradeDTO gdto = new tradeDTO(goodsseq);
	
	ArrayList<goodsDTO> arr = gdao.purchase(gdto);
	%>
	
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                    <form action="ReviewService" method="get">
							<input type="hidden" name="id" value="<%=arr.get(0).getId()%>">
							<input type="hidden" name="seq" value="<%=arr.get(0).getSeq()%>">
                        <table class="tablein">
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

							<tr>
							
								<td class='shoping__cart__item'>
									<img class='images' src='Upload/<%=arr.get(0).getImg() %>'>
								</td>
								<td class='shoping__cart__total' style='width:300px; text-align:center; font-size:15px;'>
									<h5><%=arr.get(0).getName()%></h5>
								</td>
								<td class='reviewrow' style='width:200px; text-align:center; font-size:15px;'>
									<input class="reviewin" type="text" name="review" placeholder="리뷰를 작성해주세요">
								</td>
								<td class='shoping__cart__price' style='width:200px; text-align:center; font-size:15px;'>
						 	 		<input type="radio" name="rating" value="1"><a>1  </a><img style="width:50px;height:50px;" src="img/1point.png" name="rating"><br>
						 	 		<input type="radio" name="rating" value="2"><a>2  </a><img style="width:50px;height:50px;" src="img/2point.png" name="rating"><br>
						 	 		<input type="radio" name="rating" value="3"><a>3  </a><img style="width:50px;height:50px;" src="img/3point.png" name="rating"><br>
						 	 		<input type="radio" name="rating" value="4"><a>4  </a><img style="width:50px;height:50px;" src="img/4point.png" name="rating"><br>
						 	 		<input type="radio" name="rating" value="5"><a>5  </a><img style="width:50px;height:50px;" src="img/5point.png" name="rating">
						  	 	
								</td>
								<td class='shoping__cart__price' style='width:200px; text-align:center; font-size:25px;'>
									<button type="submit" class="snip1535two" id="idCheck" value="review">등록하기</button>
								</td>
							</tr>

  
                            </tbody>

                        </table>
           				</form>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- Shoping Cart Section End -->
    
  <!--  <div class="text_ul_wrap">
						 	 		<a href="javascript:;"><strong>점수 입력</strong></a>
						  	 		<ul class="ul_select_style" style="list-style: none;">
							    		<li><img style="width:20px;height:20px;" src="img/1point.png" value="1">1</li>
							    		<li><img style="width:20px;height:20px;" src="img/2point.png" value="2">2</li>
								    	<li><img style="width:20px;height:20px;" src="img/3point.png" value="3">3</li>
								    	<li><img style="width:20px;height:20px;" src="img/4point.png" value="4">4</li>
								    	<li><img style="width:20px;height:20px;" src="img/5point.png" value="5">5</li>
						  	 		</ul>
									</div>-->
    
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