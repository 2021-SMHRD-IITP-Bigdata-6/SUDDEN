<%@page import="java.util.function.Function"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
					href="log-in.jsp">돌아가기</a>
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
				<div class="col-lg-12">
					<h1>비밀번호 찾기</h1>
					<br>
					<!-- Sign Up Form -->
					<div class="form-container">
					<div id="pwsearch">
						<div>가입한 아이디와 이메일을 통해 비밀번호를 찾으실수 있습니다.</div>
						<br>
							
							
							
								<div class="form-group">
									<input type="text" class="form-control-input" id="search_id" name="id"  placeholder="ID을 입력하세요">
								</div>
								<div class="form-group">
									 <input type="email" class="form-control-input" id="search_email" name="email"  placeholder="Email를 입력하세요">
									
								</div>
								<div class="num"></div>
								<!--<div class="form-group">
                                <input type="text" class="form-control-input" id="cpassword" required> 
                                <label class="label-control" for="cpassword">설정할 PW확인</label>
                                <div class="help-block with-errors"></div>
                            </div>  -->
								<div class="form-group">
									<button class="snip1535two" onclick="pw_search()">찾기</button>
								</div>
								<div class="form-message">
									<div id="smsgSubmit" class="h3 text-center hidden"></div>
								</div>
							
							
							
							
						</div>
					</div>
					<!-- end of form container -->
					<!-- end of sign up form -->

				</div>
				<!-- end of col -->
			</div>
			<!-- end of row -->
		</div>
		<!-- end of container -->
		
	<script type="text/javascript" src="jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	function pw_search() {
			$.ajax({
						url : "pw_search.do",
						type : "get",
						data : {
							"id" : $('input[id=search_id]').val(),
							"email" : $('input[id=search_email]').val()
						},
						
						success : function(pw) {
							console.log(pw)
							
						
							$('#pwsearch').html(''); //pwsearch의  html코드 초기화
							//$('선택자').append(html/text);
							//$('선택자').append(html/text);
							//$('선택자').append(html/text);
							//$('선택자').append(html/text);
							let new_div = "";
							
							new_div += "<h6>회원가입시 사용한 비밀번호는 "+pw+"입니다</h6>";
							new_div += "</div>";
							new_div += "<a class='snip1535two' href='log-in.jsp'>로그인 이동</a>";
							new_div += "</div>";

							$('#pwsearch').append(new_div);
							

			
	},
	error : function(){
		alart("요청 실패!")
	}
});
	}

	</script>
				
	</header>
	<!-- end of ex-header -->
	<!-- end of header -->

	<!-- Scripts -->
	<!-- Popper tooltip library for Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Custom scripts -->
	
</body>
</html>