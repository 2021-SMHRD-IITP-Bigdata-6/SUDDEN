<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
   Connection conn = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- SEO Meta Tags -->
<meta name="description"
	content="Tivo is a HTML landing page template built with Bootstrap to help you crate engaging presentations for SaaS apps and convert visitors into users.">
<meta name="author" content="Inovatik">

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
<body>
<body data-spy="scroll" data-target=".fixed-top"
	style="background-color: #394aad;">


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
					href="Mypage.jsp" id="back">돌아가기</a>
				</span>
			</div>
		</div>
		<!-- end of container -->
	</nav>
	<!-- end of navbar -->
	<!-- end of navigation -->
</head>
<body>
	<div id="map"
		style="position: absolute; top: 100px; left: 470px; width: 1000px; height: 700px;"></div>

<<<<<<< HEAD
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=713cfaa3a4daee68c31cd491fa80cd90"></script>
=======
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d45d67312de0b775f7a3137b821341a4&libraries=services,clusterer,drawing"></script>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-IITP-Bigdata-6/SUDDEN.git
	<script>
   if(localStorage.getItem('키')){ 
      var lastData = localStorage.getItem('키')
      console.log(lastData);   
   }
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new kakao.maps.LatLng(37.56682, 126.97865), // 지도의 중심좌표
              level: 1, // 지도의 확대 레벨
              mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
          }; 

      // 지도를 생성합니다    
      var map = new kakao.maps.Map(mapContainer, mapOption); 

      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();

      // 주소로 좌표를 검색합니다
      geocoder.addressSearch(lastData, function(result, status) {

          // 정상적으로 검색이 완료됐으면 
           if (status === kakao.maps.services.Status.OK) {

              var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

              // 결과값으로 받은 위치를 마커로 표시합니다
              var marker = new kakao.maps.Marker({
                  map: map,
                  position: coords
              });

              // 인포윈도우로 장소에 대한 설명을 표시합니다
              var infowindow = new kakao.maps.InfoWindow({
                  content: '<div style="width:150px;text-align:center;padding:6px 0;">SUDDEN 안심구역</div>'
              });
              infowindow.open(map, marker);

              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
              map.setCenter(coords);
          } 
      });    
   
   </script>

	<!-- 이미지 지도를 표시할 div 입니다 -->
	<div id="staticMap" style="width: 600px; height: 350px;"></div>

	<script type="text/javascript"
		src=""></script>
	<script>
	var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
    staticMapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 이미지 지도의 중심좌표
        level: 3 // 이미지 지도의 확대 레벨
    };

	// 이미지 지도를 표시할 div와 옵션으로 이미지 지도를 생성합니다
	var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
	</script>
   <%
try{
   try {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      System.out.println("클래스파일 로딩완료");

      String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
      String dbid = "cgi_8_5_1216";
      String dbpw = "smhrd5";

      conn = DriverManager.getConnection(url, dbid, dbpw);

      if (conn != null) {
         System.out.println("연결성공");
      } else {
         System.out.println("연결실패");
      }

   } catch (Exception e) {
      e.printStackTrace();
   }
   
   String sql = "select * from "; //DB를 조회할 select문
   pstmt = conn.prepareStatement(sql); //sql문으로 conn
   rs = pstmt.executeQuery(); //pstmt 실행 후 결과를 rs에 할당
   
   while(rs.next()){ //조회되는 로우(행) 반복
      out.print("<tr>");
      out.print("<td>" + rs.getString("sabun") + "</td>"); //DB에서 sabun 컬럼에 해당하는 레코드 값을 불러옴
      out.print("<td>" + rs.getString("hakkwa") + "</td>");
      out.print("<td>" + rs.getInt("kor") + "</td>");
      out.print("<td>" + rs.getInt("eng") + "</td>");
      out.print("<td>" + rs.getInt("com") + "</td>");
      out.print("</tr>");
   }
   
   rs.close();
   pstmt.close();
   conn.close();
}catch(Exception e){
   e.printStackTrace();
}finally{
   try{
      if(rs!=null) rs.close();
      if(pstmt!=null) pstmt.close();
      if(conn!=null) conn.close();
   }catch(Exception e){
      e.printStackTrace();
   }
}
%>
</body>
</html>