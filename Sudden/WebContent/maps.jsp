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
					href="Mypage.jsp" id="back">���ư���</a>
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
	<!-- Ű�� -->
	<script type=""> </script>
	<script>
	if(localStorage.getItem('Ű')){ 
	      var lastData = localStorage.getItem('Ű')
	      console.log(lastData);
	      }
		
	$.ajax({
		url : 'cctv',//��û�� url
		type : 'get',	// ���۹��
		dataType : 'json', //�޾ƿ� ������ Ÿ��
		data:{
			"addr":lastData
		},
		success: function(cctvpoint){
			alert('����');
			console.log("test"+cctvpoint);
			makeMap(cctvpoint); // ������ ����� �ִ� �Լ� 
		},
		error : function(){
			alert("����");
		}
	});
	
	function makeMap(cctv){
		var mapContainer = document.getElementById('map'); // ������ ǥ���� div 

		    mapOption = {
		        center: new kakao.maps.LatLng(35.110458, 126.877987), // ������ �߽���ǥ
		        level: 3, // ������ Ȯ�� ����
		        mapTypeId : kakao.maps.MapTypeId.ROADMAP // ��������
		    }; 


		// ������ �����մϴ�    
		var map = new kakao.maps.Map(mapContainer, mapOption); 

		// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
		var geocoder = new kakao.maps.services.Geocoder();
		
		for(var i=0;i<cctv.length;i++){//���� ���� ���ϵ� 373 ���� ���� �۾Ϸ� 66
			var addr = cctv[i].addr;
			geocoder.addressSearch(cctv[i].addr, info(addr));
			console.log(cctv[i].addr);
		}
		
		function info(addr){
			return function(result, status){
				//geocoder.addressSearch("���� ���� ���ϵ� 373", function (result, status) {
				//return function(result, status) {
		    // ���������� �˻��� �Ϸ������ 
		     if (status === kakao.maps.services.Status.OK) {

		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords,
		            clickable: true // ��Ŀ�� Ŭ������ �� ������ Ŭ�� �̺�Ʈ�� �߻����� �ʵ��� �����մϴ�
		        });
		     
		        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">SUDDEN �Ƚɱ���</div>'
		        });
		        infowindow.open(map, marker);

		        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
		        map.setCenter(coords);
		        }
		  // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
		     kakao.maps.event.addListener(marker, 'click', function() {
		           // ��Ŀ ���� ���������츦 ǥ���մϴ�
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