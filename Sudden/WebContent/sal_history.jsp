<%@page import="com.sudden.DTO.chatDTO"%>
<%@page import="com.sudden.DAO.chatDAO"%>
<%@page import="com.sudden.DTO.InterDTO"%>
<%@page import="com.sudden.DTO.goodsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sudden.DAO.goodsDAO"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO Meta Tags -->
    <meta name="description" content="Tivo is a HTML landing page template built with Bootstrap to help you crate engaging presentations for SaaS apps and convert visitors into users.">
    <meta name="author" content="Inovatik">

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
	<link href="css/magnific-popup.css" rel="stylesheet">
	<link href="css/styles.css" rel="stylesheet">
	<style>
    .images {width:200px; height:200px;}
    .td.shoping__cart__item {width: 555px; height: 261px;}
    .shoping__cart__table{background-color:white; width:700px; position:absolute;left:200px; top:100px;}
    .footer{width:100%;position:absolute;top:2000px; }
    .shoping__cart__table table thead tr {
	border-bottom: 3px solid #ebebeb;
	}
	.shoping__cart__item .images .shoping__cart__total .shoping__cart__price{
	
	}
	
	#buttstyle {
    background-color: #394aad;
    border: none;
    color: #ffffff;
    cursor: pointer;
    display: inline-block;
    font-family: 'BenchNine', Arial, sans-serif;
    font-size: 1em;
    font-size: 10px;
    line-height: 1em;
    margin: 15px 3px;
    outline: none;
    padding: 10px 10px 10px;
    position: relative;
    text-transform: uppercase;
    font-weight: 100%;
}
    
    </style>
	<!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
    <script src="jquery-3.6.0.min.js"></script>
	<body>
	<body data-spy="scroll" data-target=".fixed-top" style="background-color:#394aad;">
    
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
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
        <div class="container">

            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Tivo</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="index.jsp">SUDDEN</a> 
            
            <!-- Mobile Menu Toggle Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-awesome fas fa-bars"></span>
                <span class="navbar-toggler-awesome fas fa-times"></span>
            </button>
            <!-- end of mobile menu toggle button -->

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                    </li>
                    <li class="nav-item">
                    </li>
                    <li class="nav-item">
                    </li>

                    <!-- Dropdown Menu -->          
                    <li class="nav-item dropdown">
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <div class="dropdown-items-divide-hr"></div>
                            <div class="dropdown-items-divide-hr"></div>   
                        </div>
                    </li>
                    <!-- end of dropdown menu -->
                    <li class="nav-item">    
                    </li>
                </ul>
                <span class="nav-item">
                    <a class="btn-outline-sm" href="Mypage.jsp" id="back">돌아가기</a>
                </span>
            </div>
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
    <%
      memberDTO dto = (memberDTO) session.getAttribute("dto");
   %>
</head>
<body>
	
    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product" style="font-size:30px; text-align:center;">제품이미지</th>
                                    <th style="font-size:30px;text-align:center;">제품명</th>
                                    <th style="font-size:30px;text-align:center;">가격</th>
                                    <th style="font-size:30px;text-align:center;"></th>
                                    <th style="font-size:30px;text-align:center;"></th>
                                    
                                </tr>
                                
                            </thead>
                            <tbody>
                            
                            
                            	
                            	
   
    <% goodsDAO dao = new goodsDAO();
    
    
	ArrayList<goodsDTO> arr = dao.Sales(dto);
	
	chatDAO cdao = new chatDAO();
	
	
	if(arr.size()>0){
	for(int i = 0; i < arr.size(); i++) {
		String status = arr.get(i).getStatus();
		out.print("<tr>");
		out.print("<td class='shoping__cart__item'>"+"");	
		out.print("<img class='images' src='Upload/"+arr.get(i).getImg()+"'>");
		out.print("</td>");
        out.print("<td class='shoping__cart__total' style='width:300px; text-align:center; font-size:15px;'>"+"");
		out.print("<h5><a href='shop-details.jsp?goodsseq="+arr.get(i).getSeq()+"'>"+arr.get(i).getName()+"</a></h5>");
		out.print("</td>");
		if(status.equals("Y")){
			out.print("<td class='shoping__cart__price' style='width:200px; text-align:center; font-size:15px;'>판매완료");
		}else{
			out.print("<td class='shoping__cart__price' style='width:200px; text-align:center; font-size:15px;'>"+arr.get(i).getPrice()+"");
		}
		out.print("</td>");
		ArrayList<chatDTO> arry = cdao.searchchat(arr.get(i).getSeq());
		
		int j = 0;
		if(arry.size()<=0){
		}else{
			out.print("<td>");
			out.print("<select id='selectTag' name='" + arr.get(i).getSeq() + "'>");
			out.print("<option value='선택안함'>선택안함</option>");
			for(j = 0; j<arry.size(); j++){	
			out.print("<option value="+arry.get(j).getId()+">"+arry.get(j).getId()+"</option>");
			}
			out.print("</select>");
			out.print("</td>");
			out.print("<td class='shoping__cart__price' style='width:200px; text-align:center; font-size:15px;'><a id='buttstyle' class='snip1535two'>판매완료</a>");		
			out.print("</td>");
		}
		
		out.print("</tr>");
	}
	}
	%>
  								
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- Shoping Cart Section End -->



    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">
	function salcmplt(){
		let gseq = arr.get(i).getSeq();
		$.ajax({
			url : "SalecmpltService",
			type : "get",
			data : gseq,
			success : function(res){
				if(res=='ture'){
					alert("판매완료오류.");
				}
				alert("판매가 되었습니다.");
			}
			
		})
	}
	
	$('#selectTag').on('change', function(){
	
		
		$('.snip1535two').attr("href", "Salcmplt.do?goodsseq=" + $(this).attr('name')  + "&chatid=" + $(this).val());
		
		
	})
	
	</script>


</body>
</html>