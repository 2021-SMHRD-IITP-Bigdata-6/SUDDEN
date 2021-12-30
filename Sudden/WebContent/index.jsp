<%@page import="com.sudden.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta name="description" content="Ogani Template">
<meta name="keywords" content="Ogani, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge" >
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
	int num = 0;
	%>

	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="header__logo" >
					<a href="./index.jsp"><img style="width:170px; height:100px;" src="img/logo1.png" alt=""></a>
				</div>
			</div>
			
			<div class="col-lg-3">
				
				<%if (dto == null) {
				  } else {
					  if (dto.getId().equals("admin")) {%>
						  <!-- 관리자 권한 기능  -->
					<%}%>
					<!-- <div class="header__cart">
					<ul>
						<li><a href="Registe.html"><i class="fa fa-registered"></i></a></li>
						<li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
						<li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
					</ul>
					<div class="header__cart__price">
						item: <span>$150.00</span>
					</div>
				</div> -->
				  <%}%>			
			</div>
		</div>
		<div class="humberger__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>

	<!-- Hero Section Begin -->
	<section class="hero">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="hero__categories">
						<div class="hero__categories__all">
							<i class="fa fa-bars"></i> <span>전체 카테고리</span>
						</div>
						<ul>
							<li><a href="shop-kate.jsp?cat_num=0">여성의류</a></li>
							<li><a href="shop-kate.jsp?cat_num=1">남성의류</a></li>
							<li><a href="shop-kate.jsp?cat_num=2">신발</a></li>
							<li><a href="shop-kate.jsp?cat_num=3">가방</a></li>
							<li><a href="shop-kate.jsp?cat_num=4">시계/주얼리</a></li>
							<li><a href="shop-kate.jsp?cat_num=5">패션엑세서리</a></li>
							<li><a href="shop-kate.jsp?cat_num=6">디지털/가전</a></li>
							<li><a href="shop-kate.jsp?cat_num=7">스포츠/레저</a></li>
							<li><a href="shop-kate.jsp?cat_num=8">차량/오토바이</a></li>
							<li><a href="shop-kate.jsp?cat_num=9">키덜트</a></li>
							<li><a href="shop-kate.jsp?cat_num=10">도서/티켓/문구</a></li>
							<li><a href="shop-kate.jsp?cat_num=11">뷰티/미용</a></li>
							<li><a href="shop-kate.jsp?cat_num=12">가구/인테리어</a></li>
							<li><a href="shop-kate.jsp?cat_num=13">생활/가공식품</a></li>
							<li><a href="shop-kate.jsp?cat_num=14">유아동/출산</a></li>
							<li><a href="shop-kate.jsp?cat_num=15">반려동물용품</a></li>
							<li><a href="shop-kate.jsp?cat_num=16">기타</a></li>
							<li><a href="shop-kate.jsp?cat_num=17">서든나눔</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="hero__search">
						<div class="hero__search__form">
							<form action="Searchgoods.do"><!-- 검색하는곳 Search.do -->
                                <input type="text" id="search" name="search" placeholder="찾고 싶은 상품을 검색해 보세요">
                                <button type="submit" class="site-btn" id="search_goods" onclick="search()">SEARCH</button>
                            </form>
						</div>
						<div class="header__top__right__auth">


							<div class="hero__search__login">
								<!-- 로그인하는곳 -->

								<%
								if (dto == null) {
								%>
								<a href="log-in.jsp"><i class="fa fa-user">Login</i></a>
								<%
									} else {
								if (dto.getId().equals("admin")) {
								%>
								<!-- 관리자 권한 기능  -->
								<%
									}
								%>
								<!-- 로그인 후 아이콘-->
								<div class="login__box">
									<div class="profile">
										<span><%= dto.getId() %>님 환영합니다!</span>
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
						<div class="hero__item set-bg" style="width:850px; height:550px;"data-setbg="img/mainpage.PNG">
							<div class="hero__text">
				
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- Hero Section End -->

	

	<!-- Featured Section Begin -->
	<section class="featured spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>추천 상품</h2>
					</div>
					<div class="featured__controls">
						<ul>
							<li class="active" data-filter="*">All</li>
							<li data-filter=".oranges">Oranges</li>
							<li data-filter=".fresh-meat">Fresh Meat</li>
							<li data-filter=".vegetables">Vegetables</li>
							<li data-filter=".fastfood">Fastfood</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row featured__filter">
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-1.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-2.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-3.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-4.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-5.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-6.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-7.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
					<div class="featured__item">
						<div class="featured__item__pic set-bg"
							data-setbg="img/featured/feature-8.jpg">
							<ul class="featured__item__pic__hover">
								<li><a href="#"><i class="fa fa-heart"></i></a></li>
							</ul>
						</div>
						<div class="featured__item__text">
							<h6>
								<a href="#">Crab Pool Security</a>
							</h6>
							<h5>$30.00</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Featured Section End -->

	
	


	<!-- Footer Section Begin -->
	<footer class="footer spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.jsp"><img style="width:170px; height:150px;" src="img/logo2.jpg" alt=""></a>
						</div>
						<ul>
							<li>Address: 광주광역시 남구 송암로 60</li>
                            <li>Phone: 000-0000-0000</li>
                            <li>Email: jcm829700@naver.com</li>
						</ul>
					</div>
				</div>
				
			</div>
			<div class="row">
				<div class="col-lg-12"></div>
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