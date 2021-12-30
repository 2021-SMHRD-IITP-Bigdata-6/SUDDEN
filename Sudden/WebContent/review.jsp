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
    .shoping__cart__table{background-color:white; width:700px; height:800px; position:absolute;left:200px; top:100px; padding:10px 30px 10px;}
    .footer{width:100%;position:absolute;top:2000px; }
    .review {width: 630px; height: 230px; background-color:white; border: 1px solid #ebebeb; padding: 10px 20px 10px;}
    .reviewer_name {width:50px; height:20px; margin-bottom:10px;}
    .reviewer_score {width: 600px; height:30px;}
    .reviewer_score_image {width:50px; height:10px;}
    .reviewer_product_link {width:350px; height:30px; border: 1px solid #ebebeb; text-align: left; margin-bottom: 10px;}
    .review_comment {width:350px; height:70px;}
    .review_comment_box {width:350px; height:70px;}
    
    
    .starpoint_wrap{display:inline-block;}
	.starpoint_box{position:relative;background:url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 0 no-repeat;font-size:0;}
	.starpoint_box .starpoint_bg{display:block;position:absolute;top:0;left:0;height:18px;background:url(https://hsecode.github.io/images_codepen/codepen_sp_star.png) 0 -20px no-repeat;pointer-events:none;}
	.starpoint_box .label_star{display:inline-block;width:10px;height:18px;box-sizing:border-box;}
	.starpoint_box .star_radio{opacity:0;width:0;height:0;position:absolute;}
	.starpoint_box .star_radio:nth-of-type(1):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(1):checked ~ .starpoint_bg{width:10%;}
	.starpoint_box .star_radio:nth-of-type(2):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(2):checked ~ .starpoint_bg{width:20%;}
	.starpoint_box .star_radio:nth-of-type(3):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(3):checked ~ .starpoint_bg{width:30%;}
	.starpoint_box .star_radio:nth-of-type(4):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(4):checked ~ .starpoint_bg{width:40%;}
	.starpoint_box .star_radio:nth-of-type(5):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(5):checked ~ .starpoint_bg{width:50%;}
	.starpoint_box .star_radio:nth-of-type(6):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(6):checked ~ .starpoint_bg{width:60%;}
	.starpoint_box .star_radio:nth-of-type(7):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(7):checked ~ .starpoint_bg{width:70%;}
	.starpoint_box .star_radio:nth-of-type(8):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(8):checked ~ .starpoint_bg{width:80%;}
	.starpoint_box .star_radio:nth-of-type(9):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(9):checked ~ .starpoint_bg{width:90%;}
	.starpoint_box .star_radio:nth-of-type(10):hover ~ .starpoint_bg,
	.starpoint_box .star_radio:nth-of-type(10):checked ~ .starpoint_bg{width:100%;}
	.blind{position:absolute;clip:rect(0 0 0 0);margin:-1px;width:1px;height: 1px;overflow:hidden;}
	.comment_submit{width:80px; height:25px; position:"absolute"; left:"50px";}
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
                    			<a class="name" href="#">
                    			<!-- 리뷰 남기는 사람의 점수 이미지 -->
	                    		<div class="starpoint_wrap">
								  <div class="starpoint_box">
								    <label for="starpoint_1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
								    <label for="starpoint_2" class="label_star" title="1"><span class="blind">1점</span></label>
								    <label for="starpoint_3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
								    <label for="starpoint_4" class="label_star" title="2"><span class="blind">2점</span></label>
								    <label for="starpoint_5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
								    <label for="starpoint_6" class="label_star" title="3"><span class="blind">3점</span></label>
								    <label for="starpoint_7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
								    <label for="starpoint_8" class="label_star" title="4"><span class="blind">4점</span></label>
								    <label for="starpoint_9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
								    <label for="starpoint_10" class="label_star" title="5"><span class="blind">5점</span></label>
								    <input type="radio" name="starpoint" id="starpoint_1" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_2" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_3" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_4" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_5" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_6" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_7" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_8" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_9" class="star_radio">
								    <input type="radio" name="starpoint" id="starpoint_10" class="star_radio">
								    <span class="starpoint_bg"></span>
								  </div>
								</div>
                    			</a>
                    		</div>
                    		<a class="reviewer_product">
                    			<button class="reviewer_product_link">블랙아웃 후디 L<!-- 리뷰 남기는 사람이 구매한 제품으로 이동 -->
                    			</button>
                    		</a>
                    		<div class="review_comment">
                    			<textarea class="review_comment_box" class="comment_box" name="Review" rows="5" cols="33" maxlength="100"></textarea>
                    			<input type="submit" value="작성완료" class="comment_submit">
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
    <script type="text/javascript">
   	  const drawStar = (target) => {
        document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
      }
    </script>


</body>
</html>