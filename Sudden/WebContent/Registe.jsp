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
           			 <!-- 내부 JS 지정 -->
    <script>

    	
   	
    	
    	
    </script>
    
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
				<!-- 로그인 한 후 아이콘 보여주는곳 -->
				
				<!--<%if (dto == null) {
				  } else {
					  if (dto.getId().equals("admin")) {%>
						   관리자 권한 기능  
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
                            <span>전체 카테고리</span>
                        </div>
                        <ul>
                            <li><a href="#">여성의류</a></li>
                            <li><a href="#">남성의류</a></li>
                            <li><a href="#">신발</a></li>
                            <li><a href="#">가방</a></li>
                            <li><a href="#">시계/주얼리</a></li>
                            <li><a href="#">패션엑세서리</a></li>
                            <li><a href="#">디지털/가전</a></li>
                            <li><a href="#">스포츠/레저</a></li>
                            <li><a href="#">차량/오토바이</a></li>
                            <li><a href="#">키덜트</a></li>
                            <li><a href="#">도서/티켓/문구</a></li>
                            <li><a href="#">뷰티/미용</a></li>
                            <li><a href="#">가구/인테리어</a></li>
                            <li><a href="#">생활/가공식품</a></li>
                            <li><a href="#">유아동/출산</a></li>
                            <li><a href="#">반려동물용품</a></li>
                            <li><a href="#">기타</a></li>
                            <li><a href="#">서든나눔</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="Search.do">
                                <input type="text" id="search" name="name" placeholder="찾고 싶은 상품을 검색해 보세요">
                                <button type="submit" class="site-btn" id="search_goods" onclick="search()">SEARCH</button>
                            </form>
                        </div>
                        <div class="header__top__right__auth">


							<div class="hero__search__login">
								<!-- 로그인하는곳 -->

								<%
								if (dto == null) {
								%>
								<a href="log-in_details.jsp"><i class="fa fa-user">Login</i></a>
								<%
									} else {
								
								%>
								<!-- 로그인 후 아이콘-->
								<div class="login__box">
									<div class="profile">
										<span class="profile__picture"><i class="fa fa-user-circle fa-lg"></i></span>
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
                        <h2>안전한 중고 직거래 플랫폼</h2>
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
                        	<img id="imgThumb" src="upload/imges.jpg" width="400px" height="400px">
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                      
     <fieldset>
     <h2>파일 업로드</h2>
     <table style="font-size:20px; color:black;">
     <form action="UploadService" method="post" enctype="multipart/form-data">
          <tr>
              <td>상품 이름 : </td>
              <td><input type="text" name=""/></td>
          </tr>
          <tr>
              <td>상품 가격 : </td>
              <td><input type="text" name=""/></td>
          </tr>
          <tr>
              <td>등록할 사진 : </td>
              <td><input type="file" value="파일 선택" name="file"/></td>
          </tr>
          <tr>
              <td>상품 설명 : </td>
              <td><input type="text" value="" name=""/></td>
          </tr>    
          <tr>
          		<td>카테고리 :</td>
          		<td><select id="browsers" name="browsers" multiple size="3" required autofocus>
			    <option value="1">여성의류</option>
			    <option value="2">남성의류</option>
			    <option value="3">신발</option>
			    <option value="4">가방</option>
			    <option value="5">시계/주얼리</option>
			    <option value="6">패션엑세서리</option>
			    <option value="7">디지털/가전</option>
			    <option value="8">스포츠/레저</option>
			    <option value="9">차량/오토바이</option>
			    <option value="10">키덜트 음반/악기</option>
			    <option value="11">도서/티켓/문구</option>
			    <option value="12">뷰티/미용</option>
			    <option value="13">가구/인테리어</option>
			    <option value="14">생활/가공식품</option>
			    <option value="15">유아동/출산</option>
			    <option value="16">반려동물용품</option>
			    <option value="17">기타</option>
			    <option value="18">서든나눔</option>
				</select>
				</td>
          </tr>
          <tr>
              <td colspan="2"><button class="snip1535" "type="submit" value="업로드"/>업로드</button></td>
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
                            <a href="./index.html"><img style="widht:200px;height:250px;" src="img/logo2.jpg" alt=""></a>
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


</body>

</html>