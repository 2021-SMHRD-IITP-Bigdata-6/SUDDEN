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
</head>
<body data-spy="scroll" data-target=".fixed-top">

	<%
	memberDTO dto = (memberDTO) session.getAttribute("dto");
	
	request.setCharacterEncoding("utf-8");

	String id = (String)session.getAttribute("id");

	//DAO
	Connection conn = null;
	PreparedStatement psmt = null;

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
			<a class="navbar-brand logo-image" href="index.html">SUDDEN</a>

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
					href="Mypage.jsp">돌아가기</a>
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
		<div id="content"
			style="background-color: #fff; width: 600px; margin-left: 670px; margin-right: auto; text-align: center; padding: 75px; border-radius: 20px;">
			<h2>프로필 수정</h2>
			<p class="contxt">SUDDEN 프로필과 닉네임을 수정 하실수 있습니다.</p>
			<table border="0" class="tbl_model">
				<tr>
					<th scope="row">
						<div class="thcell">프로필 사진</div>
					</th>
					<td>
						<div class="tdcell">
							<img id="imgThumb"
								src="https://static.nid.naver.com/images/web/user/default.png?type=s160"
								width="100" height="100"> <span class="mask"></span>
						</div> <br>
						<div class="btn_area_btm">
							<span class="btn_file"> <input type="file" id="inputImage"
								name="profileImage" accept="image/*">
							</span>
						</div> <br>
					</td>
				</tr>
				<th scope="row">
					<div class="thcell">
						<label for="inpNickname">별명</label>
					</div>
				</th>
				<td>
					<div class="tdcell">
						<p class="contxt_webctrl nickname">
							<br> <br> <br> <input type="text" name="nickname"
								id="inpNickname" placeholder="변경할 닉네임 입력"
								style="width: 254px;"
								onclick="clickcr(this,'prf.nick','','',event)"> <input
								type="text" style="display: none">
						</p>
					</div>
				</td>


			</table>

			<div class="btn_wrap">
				<a href="Mypage.jsp" class="btn_model"> <b id="btnConfirm"
					class="btn2 txt_disable"
					onclick="clickcr(this,'prf.apply','','',event)">적용</b>
				</a> <a href="Mypage.jsp" class="btn_model"> <b id="btnConfirm"
					class="btn2 txt_disable"
					onclick="clickcr(this,'prf.apply','','',event)">취소</b>
				</a>
			</div>
		</div>

		<%
		try {
			//드라이버 연결
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
			String dbid = "cgi_8_5_1216";
			String dbpw = "smhrd5";

			conn = DriverManager.getConnection(url, dbid, dbpw);

			String sql = "update tbl_member set mem_nick=? where mem_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getNick());
			psmt.setString(2, id);
			int rs = psmt.executeUpdate();

			if (rs > 0) {
				System.out.println("정보수정 성공");
			} else {
				System.out.println("정보수정 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (psmt != null) {
			psmt.close();
				}
				if (conn != null) {
			conn.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		%>
	
</body>
</html>