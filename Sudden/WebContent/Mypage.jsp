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
</style>
 <script language="JavaScript" type="text/javascript">
 
 function Change(){
  var key = text.value;
  if(key==0){
	  document.all["d1"].style.display="none";
	  document.all["d2"].style.display="none";
	  document.all["d3"].style.display="none";
	  document.all["d4"].style.display="none";
	  document.all["d5"].style.display="none";
	  }
  if(key==1){
  document.all["d1"].style.display="block";
  document.all["d2"].style.display="none";
  document.all["d3"].style.display="none";
  document.all["d4"].style.display="none";
  document.all["d5"].style.display="none";
  }
  if(key==2){
  document.all["d1"].style.display="none";
  document.all["d2"].style.display="block";
  document.all["d3"].style.display="none";
  document.all["d4"].style.display="none";
  document.all["d5"].style.display="none";
  }
  if(key==3){
  document.all["d1"].style.display="none";
  document.all["d2"].style.display="none";
  document.all["d3"].style.display="block";
  document.all["d4"].style.display="none";
  document.all["d5"].style.display="none";
  }
  if(key==4){
  document.all["d1"].style.display="none";
  document.all["d2"].style.display="none";
  document.all["d3"].style.display="none";
  document.all["d4"].style.display="block";
  document.all["d5"].style.display="none";
  }
  if(key==5){
  document.all["d1"].style.display="none";
  document.all["d2"].style.display="none";
  document.all["d3"].style.display="none";
  document.all["d4"].style.display="none";
  document.all["d5"].style.display="block";
  }
 }
 </script>
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
	//변수선언
	String nick = "";
	String email = "";
	String addr = "";
	String tel = "";

	//DAO
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;

	try {
		//드라이버 연결
		Class.forName("oracle.jdbc.driver.OracleDriver");

		String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524";
		String dbid = "cgi_8_5_1216";
		String dbpw = "smhrd5";

		conn = DriverManager.getConnection(url, dbid, dbpw);

		//id에 해당하는 모든 정보 가져오기
		String sql = "select * from tbl_member where mem_id=?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getId());
		rs = psmt.executeQuery();

		if (rs.next()) {
			nick = dto.getNick();
			email = rs.getString(6);
			addr = rs.getString(4);
			tel = rs.getString(5);
	
		};
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null) {
		rs.close();
			}
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
	<!-- Header -->
	<header id="header" class="ex-2-header">
		<div class="container">
			<div class="row">
				<!-- 프로필 설정 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>프로필 설정</h2>
					</div>
					<div class="sh_content">
						<dl class="sh_lst">
							<dt class="blind">&nbsp;</dt>
							<dd class="intro_desc">&nbsp;</dd>
							<dt class="blind">프로필사진</dt>
							<dd class="pic_desc">
								<a href="#"
									onclick="changeImage();clickcr(this,'imn.prfmodify','','',event);">
									<img src="" width="180" height="180" alt> <span
									class="spimg img_frame"></span>
								</a>
							</dd>
							<dt class="blind">&nbsp;</dt>
							<dd class="intro_desc">&nbsp;</dd>
						</dl>
					</div>
					<p class="btn_area_btm">
						<a href="Propile.jsp"
							onclick="changeImage();clicker(this,'imn.prfmodify','','',event);"
							class="snip1535"> <b class="btn2">수정</b>
						</a>
					</p>
				</div>
				<div class="sh_group">
					<div class="column">
						<div class="sh_header">
							<h2>회원 정보및수정</h2>
						</div>
						<div class="sh_content">
							<dl class="sh_lst2">
								<dt class="blind">&nbsp;</dt>
								<dd class="intro_desc">&nbsp;</dd>
								<dt>별명 :</dt>
								<dd><%=nick%></dd>
								<dt class="nic_tit">이메일 :</dt>
								<dd class="nic_desc"><%=email%></dd>
								<dt>주소 :</dt>
								<dd><%=addr%></dd>
								<dt>전화 번호 :</dt>
								<dd><%=tel%></dd>
								<dt class="blind">&nbsp;</dt>
								<dd class="intro_desc">&nbsp;</dd>
								<dt class="blind">&nbsp;</dt>
							</dl>
						</div>
						<p class="btn_area_btm">
							<a href="Propile2.jsp"
								onclick="changeImage();clicker(this,'imn.prfmodify','','',event);"
								class="snip1535"> <b class="btn2">수정</b>
							</a>
						</p>
					</div>
				</div>
				<div class="sh_group">
					<div class="sh_header">
						<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지역
							설정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2>
					</div>
				<dt>지역을 선택해 주세요!</dt>				
					<table>
							<tr>
						       <td id="td1">도시</td>
						          	<td>	
						          		<select id="browsers2" name="browsers2">
						          		<option value="선택">선택</option>
									    <option value="서울특별시">서울특별시</option>
									    <option value="광주광역시">광주광역시</option>
									    <option value="부산광역시">부산광역시</option>
									    <option value="인천광역시">인천광역시</option>
									    <option value="대구광역시">대구광역시</option>
									    <option value="대전광역시">대전광역시</option>
									    <option value="울산광역시">울산광역시</option>
									    <option value="세종특별자치시">세종특별자치시</option>
									    <option value="경기도">경기도</option>
									    <option value="강원도">강원도</option>
									    <option value="충청남도">충청남도</option>
									    <option value="충청북도">충청북도</option>
									    <option value="경상남도">경상남도</option>
									    <option value="경상북도">경상북도</option>
									    <option value="전라북도">전라북도</option>
									    <option value="전라남도">전라남도</option>
									    <option value="제주도">제주도</option>
										</select>
										</td>
						          </tr>
								<tr>
										<td id="td1">지역</td>
									<td><select id="text" onchange="Change()" style=" background-color: white;
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
																						background-repeat: no-repeat;">
										<option value="0">선택</option>
									    <option value="3">광산구</option>
									    <option value="4">북구</option>
									    <option value="2">동구</option>
									    <option value="1">남구</option>
									    <option value="5">서구</option>
										</select></td>
								</tr>
								<tr>						
									<td id="td1">읍/면/동</td>
									<td>
									<!-- 남구 -->
									<select id="d1" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="선택">선택</option>
									    <option value="구동">구동</option>
									    <option value="구소동">구소동</option>
									    <option value="노대동">노대동</option>
									    <option value="대지동">대지동</option>
									    <option value="대촌동">대촌동</option>
									    <option value="덕남동">덕남동</option>
									    <option value="도금동">도금동</option>
									    <option value="방림동">방림동</option>
									    <option value="사동">사동</option>
									    <option value="사직동">사직동</option>
									    <option value="서동">서동</option>
									    <option value="백운동">백운동</option>
									    <option value="봉선동">봉선동</option>
									    <option value="송암동">송암동</option>
									    <option value="송하동">송하동</option>
									    <option value="송천동">송천동</option>
									    <option value="신장동">신장동</option>
									    <option value="압촌동">압촌동</option>
									    <option value="월산동">월산동</option>
									    <option value="주월동">주월동</option>
									    <option value="진월동">진월동</option>
									    <option value="행암동">행암동</option>
									    <option value="임암동">임암동</option>
									    <option value="송하동">송하동</option>
									    <option value="양림동">양림동</option>
									    <option value="방림동">방림동</option>
									    <option value="구소동">구소동</option>
									    <option value="지속동">지속동</option>
									    <option value="화장동">화장동</option>
									    <option value="칠석동">칠석동</option>
									    <option value="석정동">석정동</option>
									    <option value="양과동">양과동</option>
									    <option value="이장동">이장동</option>
									    <option value="대지동">대지동</option>
									    <option value="원산동">원산동</option>
									    <option value="월성동">월성동</option>
									    <option value="방림동">방림동</option>
									    <option value="압촌동">효덕동</option>
										</select>
										<!-- 동구 -->
										<select id="d2" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="선택">선택</option>
									    <option value="대인동">대인동</option>
									    <option value="금남로">금남로</option>
									    <option value="충장동">충장동</option>
									    <option value="수기동">수기동</option>
									    <option value="대의동">대의동</option>
									    <option value="궁동">궁동</option>
									    <option value="장동">장동</option>
									    <option value="동명동">동명동</option>
									    <option value="계림동">계림동</option>
									    <option value="산수동">산수동</option>
									    <option value="지산동">지산동</option>
									    <option value="학운동">학운동</option>
									    <option value="서남동">서남동</option>
									    <option value="지원동">지원동</option>
										</select>
										<!-- 광산구 -->
										<select id="d3" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="선택">선택</option>
									    <option value="송정동">송정동</option>
									    <option value="도산동">도산동</option>
									    <option value="도호동">도호동</option>
									    <option value="신촌동">신촌동</option>
									    <option value="서봉동">서봉동</option>
									    <option value="운수동">운수동</option>
									    <option value="선암동">선암동</option>
									    <option value="소촌동">소촌동</option>
									    <option value="우산동">우산동</option>
									    <option value="황룡동">황룡동</option>
									    <option value="박호동">박호동</option>
									    <option value="비아동">비아동</option>
									    <option value="도천동">도천동</option>
									    <option value="수완동">수완동</option>
									    <option value="월계동">월계동</option>
									    <option value="쌍암동">쌍암동</option>
									    <option value="산월동">산월동</option>
									    <option value="신창동">신창동</option>
									    <option value="신가동">신가동</option>
									    <option value="운남동">운남동</option>
									    <option value="안청동">안청동</option>
									    <option value="진곡동">진곡동</option>
									    <option value="장덕동">장덕동</option>
									    <option value="흑석동">흑석동</option>
									    <option value="하남동">하남동</option>
									    <option value="장수동">장수동</option>
									    <option value="산정동">산정동</option>
									    <option value="월곡동">월곡동</option>
									    <option value="등임동">등임동</option>
									    <option value="산막동">산막동</option>
									    <option value="고룡동">고룡동</option>
									    <option value="신룡동">신룡동</option>
									    <option value="두정동">두정동</option>
									    <option value="임곡동">임곡동</option>
									    <option value="광산동">광산동</option>
									    <option value="오산동">오산동</option>
									    <option value="사호동">사호동동</option>
									    <option value="하산동">하산동</option>
									    <option value="유계동">유계동</option>
									    <option value="본덕동">본덕동</option>
									    <option value="요기동">요기동</option>
									    <option value="복룡동">복룡동</option>
									    <option value="송대동">송대동</option>
									    <option value="옥동">옥동</option>
									    <option value="월전동">월전동</option>
									    <option value="장록동">장록동</option>
									    <option value="송촌동">송촌동</option>
									    <option value="지죽동">지죽동</option>
									    <option value="용동">용동</option>
									    <option value="용곡동">용곡동</option>
									    <option value="지정동">지정동</option>
									    <option value="명화동">명화동</option>
									    <option value="동산동">동산동</option>
									    <option value="연산동">연산동</option>
									    <option value="도덕동">도덕동</option>
									    <option value="송산동">송산동</option>
									    <option value="지평동">지평동</option>
									    <option value="오운동">오운동</option>
									    <option value="삼거동">삼거동</option>
									    <option value="내산동">내산동</option>
									    <option value="대산동">대산동</option>
									    <option value="동림동">동림동</option>
									    <option value="송정동">송정동</option>
									    <option value="첨단동">첨단동</option>
									    <option value="월곡동">월곡동</option>
										</select>
										<!-- 북구 -->
										<select id="d4" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="선택">선택</option>
		                                <option value="중흥동">중흥동</option>
		                                <option value="유동">유동</option>
		                                <option value="누문동">누문동</option>
		                                <option value="북동">북동</option>
		                                <option value="임동">임동</option>
		                                <option value="신안동">신안동</option>
		                                <option value="용봉동">용봉동</option>
		                                <option value="동림동">동림동</option>
		                                <option value="운암동">운암동</option>
		                                <option value="우산동">우산동</option>
		                                <option value="풍향동">풍향동</option>
		                                <option value="문흥동">문흥동</option>
		                                <option value="각화동">각화동</option>
		                                <option value="두암동">두암동</option>
		                                <option value="오치동">오치동</option>
		                                <option value="삼각동">삼각동</option>
		                                <option value="매곡동">매곡동</option>
		                                <option value="충효동">충효동</option>
		                                <option value="덕의동">덕의동</option>
		                                <option value="금곡동">금곡동</option>
		                                <option value="망월동">망월동</option>
		                                <option value="청풍동">청풍동</option>
		                                <option value="화암동">화암동</option>
		                                <option value="장등동">장등동</option>
		                                <option value="운정동">운정동</option>
		                                <option value="본촌동">본촌동</option>
		                                <option value="일곡동">일곡동</option>
		                                <option value="양산동">양산동</option>
		                                <option value="연제동">연제동</option>
		                                <option value="신용동">신용동</option>
		                                <option value="용두동">용두동</option>
		                                <option value="지야동">지야동</option>
		                                <option value="태령동">태령동</option>
		                                <option value="수곡동">수곡동</option>
		                                <option value="효령동">효령동</option>
		                                <option value="용전동">용전동</option>
		                                <option value="용강동">용강동</option>
		                                <option value="생용동">생용동</option>
		                                <option value="월출동">월출동</option>
		                                <option value="대촌동">대촌동</option>
		                                <option value="오룡동">오룡동</option>
		                                <option value="중앙동">중앙동</option>
		                                <option value="석곡동">석곡동</option>
		                               </select>
		                                <!-- 서구 -->
		                               <select id="d5" sstyle="display:none;margin-left: auto; margin-right: auto;">
		                               <option value="선택">선택</option>
		                               <option value="양동">양동</option>
		                               <option value="농성동">농성동</option>
		                               <option value="광천동">광천동</option>
		                               <option value="유촌동">유촌동</option>
		                               <option value="덕흥동">덕흥동</option>
		                               <option value="쌍촌동">쌍촌동</option>
		                               <option value="화정동">화정동</option>
		                               <option value="치평동">치평동</option>
		                               <option value="내방동">내방동</option>
		                               <option value="서창동">서창동</option>
		                               <option value="세하동">세하동</option>
		                               <option value="용두동">용두동</option>
		                               <option value="풍암동">풍암동</option>
		                               <option value="벽진동">벽진동</option>
		                               <option value="금호동">금호동</option>
		                               <option value="마륵동">마륵동</option>
		                               <option value="매월동">매월동</option>
		                               <option value="동천동">동천동</option>
		                               <option value="유덕동">유덕동</option>
		                               <option value="상무동">상무동</option>
                                       </select>
                                       </td> 
								</tr>
					</table>
					<p class="btn_area_btm">
						<a href="maps.jsp"
							onclick="changeImage();clicker(this,'imn.prfmodify','','',event);"
							class="snip1535"> <b class="btn2">검색하기</b>
						</a>
					</p>
				</div>
					
					
	</header>
	<!-- end of ex-header -->
	<!-- end of header -->


	<!-- Js Plugins -->
	<script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	

</body>
</html>