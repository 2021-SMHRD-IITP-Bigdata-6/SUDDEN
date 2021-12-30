<%@page import="com.sudden.DTO.goodsDTO"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
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
    
    <!-- �ܺ� JS ���� -->
    <script src="js/jquery-3.3.1.min.js"></script>
           			 <!-- ���� JS ���� -->
    <script>

    	
   	
    	
    	
    </script>
    
</head>

<body>
	<%  goodsDTO gdto = null;
		memberDTO dto = (memberDTO) session.getAttribute("dto");
		gdto = (goodsDTO) session.getAttribute("gdto");
	%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
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
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
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
                        <a href="./index.jsp"><img style="widht:180px;height:150px;" src="img/logo4.PNG" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./index.html">Home</a></li>
                            <li class="active"><a href="./shop-grid.html">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
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
                        <form action="katelist.do">
                        <ul>
                            <li><a href="#" name="id">�����Ƿ�</a></li>
                            <li><a onclick="location.href='Logoutcon.do'">�����Ƿ�</a></li>
                            <li><div onclick="location.href='katelist.do'">�����Ƿ�</div></li>
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
                        </form>
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
								
								
								
									} else {
								if (dto.getId().equals("admin")) {
								%>
								<!-- ������ ���� ���  -->
								<%
									}
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
                        	<img src="img/imgsample.PNG" style="width:500px;height:400px;" id="file_check_img">
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                      
     <fieldset>
     <h2>���� ���ε�</h2>
     <table style="font-size:20px; color:black;">
     <form action="RegisteService" method="post" enctype="multipart/form-data">
     
     <input type="hidden" name="id" value="<%=dto.getId()%>">
          <tr>
              <td>���� : </td>
              <td><input type="text" name="title" value=""/></td>
          </tr>
          <tr>
              <td>��ǰ ���� : </td>
              <td><input type="text" name="price" value=""/></td>
          </tr>
          <tr>
              <td>����� ���� : </td>
              <td><input type="file" value="" name="file" id="file_check"/></td>
          </tr>
          <tr>
              <td>��ǰ ���� : </td>
              <td><input type="text" name="content"/></td>
          </tr>    
          <tr>
          		<td>ī�װ� :</td>
          		<td><select id="browsers" name="katenum" multiple size="3" required autofocus>
			    <option>�����Ƿ�</option>
			    <option>�����Ƿ�</option>
			    <option>�Ź�</option>
			    <option>����</option>
			    <option>�ð�/�־�</option>
			    <option>�мǿ�������</option>
			    <option>������/����</option>
			    <option>������/����</option>
			    <option>����/�������</option>
			    <option>Ű��Ʈ</option>
			    <option>����/Ƽ��/����</option>
			    <option>��Ƽ/�̿�</option>
			    <option>����/���׸���</option>
			    <option>��Ȱ/������ǰ</option>
			    <option>���Ƶ�/���</option>
			    <option>�ݷ�������ǰ</option>
			    <option>��Ÿ</option>
			    <option>���糪��</option>
				</select>
				</td>
          </tr>
          <tr>
              <td colspan="0"><button class="snip1535" "type="submit" value="����Ȯ��"/>����Ȯ��</button></td>
            <td colspan="0"><button class="snip1535" type="button" value="���ε�" onclick="location.href='Upload.do'"/>����Ȯ��1</button></td>
          </tr>
       
          </form>
     </table>
</fieldset>
                       
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
                            <a href="./index.html"><img style="widht:170px;height:150px;" src="img/logo2.jpg" alt=""></a>
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
    
    <script type="text/javascript">
    
    	$(function(){
    		$('#file_check').on('change', function(){
    			img_check(this);
    		});
    	})
    			
    	function img_check(input){
    		if(input.files && input.files[0]){
    			var reader = new FileReader();
    			reader.onload = function(e){
    				$('#file_check_img').attr('src', e.target.result);
    			}
    			reader.readAsDataURL(input.files[0]);
    		}
    	}
    </script>

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