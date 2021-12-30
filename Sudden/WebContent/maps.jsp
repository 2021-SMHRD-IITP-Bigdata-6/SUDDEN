<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<script src="jquery-3.6.0.min.js"></script>
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

	<script src="js/jquery-3.3.1.min.js"></script>
	<!-- 키값 -->
	<script type=""> </script>
	<script>
	if(localStorage.getItem('키')){ 
	      var lastData = localStorage.getItem('키')
	      console.log(lastData);
	      }
		
	$.ajax({
		url : 'cctv',//요청할 url
		type : 'get',	// 전송방식
		dataType : 'json', //받아올 데이터 타입
		data:{
			"addr":lastData
		},
		success: function(cctvpoint){
			alert('성공');
			console.log("test"+cctvpoint);
			makeMap(cctvpoint); // 지도를 만들어 주는 함수 
		},
		error : function(){
			alert("실패");
		}
	});
	
	function makeMap(cctv){
		var mapContainer = document.getElementById('map'); // 지도를 표시할 div 

		    mapOption = {
		        center: new kakao.maps.LatLng(35.110458, 126.877987), // 지도의 중심좌표
		        level: 3, // 지도의 확대 레벨
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
		    }; 


		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		for(var i=0;i<cctv.length;i++){//광주 남구 송하동 373 광주 남구 송암로 66
			var addr = cctv[i].addr;
			geocoder.addressSearch(cctv[i].addr, info(addr));
			console.log(cctv[i].addr);
		}
		
		function info(addr){
			return function(result, status){
				//geocoder.addressSearch("광주 남구 송하동 373", function (result, status) {
				//return function(result, status) {
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords,
		            clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
		        });
		     
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">SUDDEN 안심구역</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		        }
		  // 마커에 클릭이벤트를 등록합니다
		     kakao.maps.event.addListener(marker, 'click', function() {
		           // 마커 위에 인포윈도우를 표시합니다
		           //infowindow.open(map, marker);
		          


		          location.href="chat.jsp?data="+encodeURI(encodeURIComponent(addr));
		          alert(addr);
		     });
		    //} 

		}
			

		}
	}
		
			




	</script>
</body>
</html>