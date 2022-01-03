<%@page import="com.sudden.DTO.tradeDTO"%>
<%@page import="com.sudden.DAO.tradeDAO"%>
<%@page import="com.sudden.DTO.goodsDTO"%>
<%@page import="com.sudden.DAO.goodsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sudden.DAO.memberDAO"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- SEO Meta Tags -->
<meta name="description"
	content="Tivo is a HTML landing page template built with Bootstrap to help you crate engaging presentations for SaaS apps and convert visitors into users.">
<meta name="author" content="Inovatik">

<!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
<meta property="og:site_name" content="" />
<!-- website name -->
<meta property="og:site" content="" />
<!-- website link -->
<meta property="og:title" content="" />
<!-- title shown in the actual shared post -->
<meta property="og:description" content="" />
<!-- description shown in the actual shared post -->
<meta property="og:image" content="" />
<!-- image link, make sure it's jpg -->
<meta property="og:url" content="" />
<!-- where do you want your post to link to -->
<meta property="og:type" content="article" />

<!-- Website Title -->
<title>Sign Up - Tivo - SaaS App HTML Landing Page Template</title>

<!-- Styles -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/swiper.css" rel="stylesheet">
<link href="css/magnific-popup.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">

<!-- Favicon  -->
<link rel="icon" href="images/favicon.png">
<style>
#browsers2, #d1, #d2, #d3, #d4, #d5{
    background-color: white;
    border: 1px solid white;
    border-radius: 10px;
    display: inline-block;
    font: inherit;
    line-height: 1.5em;
    padding: 0.5em 3.5em 0.5em 1em;

	margin: 0;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-appearance: none;
	-moz-appearance: none;
	
	
	background-image:
	linear-gradient(45deg, transparent 50%, gray 50%),
	linear-gradient(135deg, gray 50%, transparent 50%),
	radial-gradient(#ddd 70%, transparent 72%);
	background-position:
	calc(100% - 20px) calc(1em + 2px),
	calc(100% - 15px) calc(1em + 2px),
	calc(100% - .5em) .5em;
	background-size:
	5px 5px,
	5px 5px,
	1.5em 1.5em;
	background-repeat: no-repeat;
}
 table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th,td{
    border: 1px solid #444444;
  }
  #td1{
  font-size:20px;
  color:white;
  background-color:gray;
  border: 1px solid #444444;
  }
  a.info{
    position:relative; /*this is the key*/
    z-index:24; left:300px;
    background-color:white;
    color:black;
    text-decoration:none;
    
    }
	
	a.info:hover{z-index:25;}
	
	a.info span{display: none}
	
	a.info:hover span{ /*the span will display just on :hover state*/
	    display:block;
	    position:absolute;
	    top:2em; left:1em; width:30em;
	    border:1px solid #394aad;
	    background-color:white; color:gray;
	    text-align: center;
	    font-size:15px;
	    }
</style>


  
 
</head>
<body>

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
	<nav
		class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
		<div class="container">

			<!-- Text Logo - Use this if you don't have a graphic logo -->
			<!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Tivo</a> -->

			<!-- Image Logo -->
			<a class="navbar-brand logo-image" href="index.jsp">SUDDEN</a>

			<!-- Mobile Menu Toggle Button -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExampleDefault"
				aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-awesome fas fa-bars"></span> <span
					class="navbar-toggler-awesome fas fa-times"></span>
			</button>
			<!-- end of mobile menu toggle button -->

			<div class="collapse navbar-collapse" id="navbarsExampleDefault">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"></li>
					<li class="nav-item"></li>
					<li class="nav-item"></li>

					<!-- Dropdown Menu -->
					<li class="nav-item dropdown">

						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<div class="dropdown-items-divide-hr"></div>
							<div class="dropdown-items-divide-hr"></div>
						</div>
					</li>
					<!-- end of dropdown menu -->

					<li class="nav-item"></li>
				</ul>
				<span class="nav-item"> <a class="btn-outline-sm"
					href="index.jsp">뒤로가기</a>
				</span>
			</div>
		</div>
		<!-- end of container -->
	</nav>
	<!-- end of navbar -->
	<!-- end of navigation -->
	<%
	memberDTO dto = (memberDTO) session.getAttribute("dto");
	String pid = dto.getId();
	memberDAO dao = new memberDAO();
	ArrayList<memberDTO> arr = dao.profile(pid);
	

	goodsDAO gdao = new goodsDAO();
	goodsDTO gdto = new goodsDTO(pid,0,0);
	
	ArrayList<goodsDTO> myseq = gdao.searchseq(gdto);
	
	int sum = 0;
	int avg =0;
	String point="";
	
	if(myseq.size()<=0){
		System.out.println("여기 ");
		point="noreview.PNG";
	}else{
		System.out.println("사이즈 = "+myseq.size());
		for(int i=0; i<myseq.size(); i++){
		tradeDAO tdao = new tradeDAO();
		tradeDTO tdto = new tradeDTO(myseq.get(i).getSeq());
		
		int rating = tdao.avgrating(tdto);
		sum=sum+rating;
		
		}
		System.out.println("합계 "+sum);
		avg = sum/myseq.size();
		System.out.println("평균"+avg);
	}
	
	if(avg==5){
		System.out.println("여기 5");
		point="5point.png";
	}else if(avg<5&&avg>=4){
		System.out.println("여기 4");
		point="4point.png";
	}else if(avg<4&&avg>=3){
		System.out.println("여기 3");
		point="3point.png";
	}else if(avg<3&&avg>=2){
		System.out.println("여기 2");
		point="2point.png";
	}else if(avg<2&&avg>0){
		System.out.println("여기 1");
		point="1point.png";
	}else{
		System.out.println("여기 0");
		point="noreview.PNG";
	}
	
	
	System.out.println("포인트"+point);
	
	
	

	%>
	<!-- Header -->
	<header id="header" class="ex-2-header">
		<div class="container">
			<div class="row">
				<!-- 프로필 설정 -->
				<div style="width:580px;" class="sh_group">
					<div class="column">
						<div class="sh_header">
							<h2>프로필 수정</h2>
						</div>
						<div style="font-size:19px;" class="sh_content"><br>
								<div>별명 :&nbsp; <%=arr.get(0).getNick()%></div><br>
								<div>이메일:&nbsp; <%=arr.get(0).getEmail()%></div><br>
								<div>주소:&nbsp; <%=arr.get(0).getAddr()%></div><br>
								<div>전화 번호:&nbsp; <%=arr.get(0).getTel()%></div><br>
						</div>
						<p class="btn_area_btm">
							<a href="Propile2.jsp"
								onclick="changeImage();clicker(this,'imn.prfmodify','','',event);"
								class="snip1535"> <b class="btn2">수정</b>
								</a>
							</p>
						</div>
					</div>
				
				<div style="width: 445px; padding: 50px 10px 50px;" class="sh_group">
					<div class="column">
						<div class="sh_content">
								<a style="font-size:30px;"><strong>구매 및  판매 내역</strong></a>
								<br><br><br>
								<div onclick="location.href='pur_history.jsp';" style="cursor:pointer; font-size:30px;">구매내역</div>
								<br><br><br>
								<div onclick="location.href='sal_history.jsp';" style="cursor:pointer; font-size:30px;">판매내역</div>
						</div>
					</div>
				</div>
 			
 		 		<div style="width:1040px;" class="sh_group">
				<div class="sh_header">
					<h2>리뷰 & 평점 <a class=info href="#">? <span>총 5개의 점수로 나뉘고 <br>1점=<img src="img/1point.png" style="width:30px;height:30px;"> 2점=<img src="img/2point.png" style="width:30px;height:30px;">
							 3점=<img src="img/3point.png" style="width:30px;height:30px;"> 4점=<img src="img/4point.png" style="width:30px;height:30px;"> 5점=<img src="img/5point.png" style="width:30px;height:30px;"></span></a>
				</h2>
							<br>
							<p>나의 평점은??&nbsp;&nbsp;<img style="width:70px;height:70px;"src="img/<%=point%>"></img></p>	<!-- 리뷰이미지 정보넣는곳 -->
								<a onclick="location.href='review.jsp';" style="cursor:pointer; font-size:20px;">확인하러 가기
								</a>		
													
						</div>
 				</div>
 </div>
 </div>
 </header>
 
    <!-- end of ex-header -->
	<!-- end of header -->


	<!-- Js Plugins -->
	
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script type = "text/javascript">
		function view_browsers3() {
			var browsers3 = document.getElementsByName("browsers3")[0];
			var idx = browsers3.selectedIndex;
			var browsers3Value = browsers3.options[idx].value;
		}	
	</script>
</body>

</html>