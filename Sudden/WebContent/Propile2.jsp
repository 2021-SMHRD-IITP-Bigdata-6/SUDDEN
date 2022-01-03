<%@page import="java.sql.ResultSet"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
</head>
<body data-spy="scroll" data-target=".fixed-top">
	<%
		memberDTO dto = (memberDTO) session.getAttribute("dto");
	%>
	
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
						href="Mypage.jsp">뒤로가기</a>
					</span>
				</div>
			</div>
			<!-- end of container -->
		</nav>
		<!-- end of navbar -->
		<!-- end of navigation -->

		<!-- Header -->
		<header id="header" class="ex-2-header">

			<div class="container">
				<div class="row">
					<div class="c_header"></div>
				</div>
			</div>

			<div id="content" style="background-color: #fff; width: 600px; text-align: center; padding: 30px; border-radius: 20px;">

				<h2>프로필 수정</h2>
				<p class="contxt">SUDDEN 프로필을 수정할수 있습니다.</p>
				<form action="UpdateCon2.do" method="get">
				<input type="hidden" name="id" value="<%=dto.getId()%>">
				<table border="0" class="tbl_model">

					<tr>
						<th scope="row">
							<div class="thcell">닉네임</div>
						</th>
						<td>
							<div class="tdcell">
								<br><br>
								<br><br>
								<br><br>
								<br> <input type="text" name="nick"style="width: 254px;">
							</div>
						</td>
					</tr>

					<tr>
						<th scope="row">
							<div class="thcell">이메일</div>
						</th>
						<td>
							<div class="tdcell">
								<br><br>
								<br><br>
								<br><br>
								<br> <input type="text" name="email" style="width: 254px;">
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">
							<div class="thcell">주소</div>
						</th>
						<td>
							<div class="tdcell">
								<br><br>
								<br><br>
								<br><br>
								<br> <input type="text" name="addr" style="width: 254px">
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row">
							<div class="thcell">전화 번호</div>
						</th>
						<td>
							<div class="tdcell">
								<br><br>
								<br><br>
								<br><br>
								<br> <input type="text" name="tel" style="width: 254px;">
							</div>
						</td>
					</tr>
				</table>
				<div class="btn_wrap" style="margin-top:10px;">
					<button class="snip1535" "type="submit" value="업로드"
						onclick="updatecheck()" />
					적용
					</button>
					<button class="snip1535" href="Mypage.jsp">뒤로가기</button>
				</div>
			</form>	

			</div>
	

	<script type="text/javascript">
		function updatecheck() {

		}
	</script>

</body>
</html>