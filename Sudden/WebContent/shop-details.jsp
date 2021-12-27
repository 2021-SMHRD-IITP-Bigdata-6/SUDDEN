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


    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.jsp"><img  style="width:150px; height:130px;" src="img/logo4.PNG" alt=""></a>
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
										<li><b>�����ϱ�</b><a href="chat.jsp"><i class="fa fa-comment" style="font-size:50px; color:black;"></i></a>
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
                            <li>Address: ���ֱ����� ���� �۾Ϸ� 60</li>
                            <li>Phone: 000-0000-0000</li>
                            <li>Email: jcm829700@naver.com</li>
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