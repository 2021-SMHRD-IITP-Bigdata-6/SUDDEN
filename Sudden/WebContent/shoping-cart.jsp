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
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
       
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.jsp"><img  style="widht:80px;height:180px;" src="img/logo4.PNG" alt=""></a>
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
                            <li><a href="#">�����Ƿ�</a></li>
                            <li><a href="#">�����Ƿ�</a></li>
                            <li><a href="#">�Ź�</a></li>
                            <li><a href="#">����</a></li>
                            <li><a href="#">�ð�/�־�</a></li>
                            <li><a href="#">�мǿ�������</a></li>
                            <li><a href="#">������/����</a></li>
                            <li><a href="#">������/����</a></li>
                            <li><a href="#">����/�������</a></li>
                            <li><a href="#">Ű��Ʈ</a></li>
                            <li><a href="#">����/Ƽ��/����</a></li>
                            <li><a href="#">��Ƽ/�̿�</a></li>
                            <li><a href="#">����/���׸���</a></li>
                            <li><a href="#">��Ȱ/������ǰ</a></li>
                            <li><a href="#">���Ƶ�/���</a></li>
                            <li><a href="#">�ݷ�������ǰ</a></li>
                            <li><a href="#">��Ÿ</a></li>
                            <li><a href="#">���糪��</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="header__top__right__auth">
                        <div class="hero__search__login">
                            <!-- �α����ϴ°� -->

								<%
								if (dto == null) {
								%>
								
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
                        <h2>������ �߰� ���ŷ� �÷���</h2>
                        <h2>SUDDEN</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">��ǰ</th>
                                    <th>����</th>
                                    <th>��</th>
                                    <th>�����ϱ�</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-1.jpg" alt="">
                                        <h5>Vegetable��s Package</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        98,000��
                                    </td>
                                    <td class="shoping__cart__total">
                                        <i class="fa fa-heart"></i>
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <a href="chat.jsp" class="snip1535two">ä��</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-2.jpg" alt="">
                                        <h5>Fresh Garden Vegetable</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        200,000��
                                    </td>
                                    <td class="shoping__cart__total">
                                        <i class="fa fa-heart"></i>
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <a href="chat.jsp" class="snip1535two">ä��</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-3.jpg" alt="">
                                        <h5>Organic Bananas</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        50,000��
                                    </td>
                                    <td class="shoping__cart__total">
                                        <i class="fa fa-heart"></i>
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <a href="chat.jsp" class="snip1535two">ä��</a>
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

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.jsp"><img style="width:230px; height:200px;" src="img/logo2.jpg" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: ���ֱ����� ���� �۾Ϸ� 60</li>
                            <li>Phone: 000-0000-0000</li>
                            <li>Email: jcm829700@naver.com</li>
                        </ul>
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