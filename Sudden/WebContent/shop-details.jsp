<%@page import="com.sudden.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

<body>

	<%
		memberDTO dto = (memberDTO) session.getAttribute("dto");
	%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo1.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.jsp">Home</a></li>
                <li><a href="./shop-grid.jsp">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.jsp">Shop Details</a></li>
                        <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.jsp"><img  style="width:250px; height:200px;" src="img/logo4.PNG" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                  <!--  <nav class="header__menu">
                        <ul>
                            <li><a href="./index.jsp">Home</a></li>
                            <li class="active"><a href="./shop-grid.jsp">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                                    <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>-->
                </div>
                <div class="col-lg-3">
				<!-- �α��� �� �� ������ �����ִ°� -->
				
				<!--<%if (dto == null) {
				  } else {
					  if (dto.getId().equals("admin")) {%>
						   ������ ���� ���  
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
				  <%}%>		 -->	
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
                            <i class="fa fa-bars"></i>
                            <span>��ü ī�װ�</span>
                        </div>
                        <ul>
                            <li><a href="shop-grid.jsp">�����Ƿ�</a></li>
                            <li><a href="shop-grid.jsp">�����Ƿ�</a></li>
                            <li><a href="shop-grid.jsp">�Ź�</a></li>
                            <li><a href="shop-grid.jsp">����</a></li>
                            <li><a href="shop-grid.jsp">�ð�/�־�</a></li>
                            <li><a href="shop-grid.jsp">�мǿ�������</a></li>
                            <li><a href="shop-grid.jsp">������/����</a></li>
                            <li><a href="shop-grid.jsp">������/����</a></li>
                            <li><a href="shop-grid.jsp">����/�������</a></li>
                            <li><a href="shop-grid.jsp">Ű��Ʈ</a></li>
                            <li><a href="shop-grid.jsp">����/Ƽ��/����</a></li>
                            <li><a href="shop-grid.jsp">��Ƽ/�̿�</a></li>
                            <li><a href="shop-grid.jsp">����/���׸���</a></li>
                            <li><a href="shop-grid.jsp">��Ȱ/������ǰ</a></li>
                            <li><a href="shop-grid.jsp">���Ƶ�/���</a></li>
                            <li><a href="shop-grid.jsp">�ݷ�������ǰ</a></li>
                            <li><a href="shop-grid.jsp">��Ÿ</a></li>
                            <li><a href="shop-grid.jsp">���糪��</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="Search.do">
                                <input type="text" id="search" name="name" placeholder="ã�� ���� ��ǰ�� �˻��� ������">
                                <button type="submit" class="site-btn" id="search_goods" onclick="search()">SEARCH</button>
                            </form>
                        </div>
                        <div class="header__top__right__auth">


							<div class="hero__search__login">
								<!-- �α����ϴ°� -->

								<%
								if (dto == null) {
								%>
								<a href="log-in_details.jsp"><i class="fa fa-user">Login</i></a>
								<%
									} else {
								
								%>
								<!-- �α��� �� ������-->
								<div class="login__box">
									<div class="profile">
										<span class="profile__picture"><i class="fa fa-user-circle fa-lg"></i></span>
										<span><%= dto.getId() %>�� ȯ���մϴ�!</span>
									</div>
									<div class="icon">
										<div class="MyPage">
											<span onclick="location.href='Mypage.jsp'" style="cursor: pointer;"><i class="fa fa-user"></i></span>
										</div>
										<div class="Favorite">
											<span onclick="location.href='shoping-cart.jsp'" style="cursor: pointer;"><i class="fa fa-heart"></i></span>
										</div>
										<div class="Chatting">
											<span onclick="location.href='#'" style="cursor: pointer;"><i class="fa fa-comment"></i></span>
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
                        <h2>������ �߰� ���ŷ� �÷���</h2>
                        <h2>SUDDEN</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="img/product/details/product-details-1.jpg" alt="">
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>��ǰ �� ����</h3>
                        <div class="product__details__price">1000$</div>
                        <p>��ǰ ���� ��ǰ �����ǰ �����ǰ �����ǰ �����ǰ �����ǰ �����ǰ �����ǰ �����ǰ �����ǰ �����ǰ ����</p>
                        <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                        <ul>
                            <li><b>����</b><a style="font-size:30px; color:black;">1000$</a></li>
                            <%
								if (dto == null) {
								%>
								<li><b>�����ϱ�</b><a href="log-in_details.jsp"><i class="fa fa-comment" style="font-size:50px; color:black;"></i></a>
			                            </li>
								
								<%
									} else {%>
										<li><b>�����ϱ�</b><a href="#"><i class="fa fa-comment" style="font-size:50px; color:black;"></i></a>
			                            </li>
									<%}%>
								
								
                            
                        </ul>
                    </div>
                </div>
             </div>
          </div>
    </section>
    <!-- Product Details Section End -->

    

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.jsp"><img  style="width:250px; height:230px;" src="img/logo2.jpg" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
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
    <script type="text/javascript">
	function search() {

		$.ajax({
			url : "search.do",
			type : "get",
			data : {
				"name" : $('#search').val(),						
			},
			success : function(res) {
				
				if(res=='true'){
					alert("�ٽ� �˻��� �ּ���");
				}else{
					
				}

			},
			error : function() {
				alert("��û ����");
			}
		});
	
	}</script>


</body>

</html>