<%@page import="com.sudden.DAO.goodsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sudden.DTO.memberDTO"%>
<%@page import="com.sudden.DTO.goodsDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>채팅</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css"/>
<script src="https://code.jquery.com/jquery-1.8.3.min.js" integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8=" crossorigin="anonymous"></script>
<style>
     .chat_wrap {border:1px solid #999;background-color:white; position:absolute; left:500px; width:500px; top:150px; padding:5px; font-size:45px; color:#333}
        .chat_wrap .inner{background-color:#acc2d2; border-radius:5px; padding:10px; overflow-y:scroll;height: 600px;}
        .chat_wrap .item{margin-top:15px}
        .chat_wrap .item:first-child{margin-top:0px}
        .chat_wrap .item .box{display:inline-block; max-width:180px; position:relative}
        .chat_wrap .item .box::before{content:""; position:absolute; left:-8px; top:9px; border-top:0px solid transparent; border-bottom:8px solid transparent;border-right:8px solid #fff;}
        .chat_wrap .item .box .msg {background:#fff; border-radius:10px; padding:8px; text-align:left}
        .chat_wrap .item .box .time {font-size:11px; color:#999; position:absolute; right: -75px; bottom:5px; width:70px}
        .chat_wrap .item.mymsg{text-align:right}
        .chat_wrap .item.mymsg .box::before{left:auto; right:-8px; border-left:8px solid #fee600; border-right:0;}
        .chat_wrap .item.mymsg .box .msg{background:#fee600}
        .chat_wrap .item.mymsg .box .time{right:auto; left:-75px}
        .chat_wrap .item .box{transition:all .3s ease-out; margin:0 0 0 20px;opacity:0}
        .chat_wrap .item.mymsg .box{transition:all .3s ease-out; margin:0 20px 0 0;}
        .chat_wrap .item.on .box{margin:0; opacity: 1;}
		
		.shop_wrap {border:1px solid #999;background-color:white; top:150px; position:absolute; left:1000px;width:350px; height:690px; padding:5px; font-size:45px; color:#333}
        .shop_wrap .shop_info{background-color:#acc2d2; border-radius:5px;padding:10px; height:250px; width:320px;}
        .shop_wrap .shop_info .shop_menu{font-size:17px;font-weight:bold;}
        .shop_wrap .shop_info .shop_img{height:150px; width:200px;}
        .shop_wrap .shop_info .shop_price{font-size:17px;font-weight:bold;}
      
        
        
        
        
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
        
        input[type="text"]{border:0; width:100%;background:#ddd; border-radius:5px; height:30px; padding-left:5px; box-sizing:border-box; margin-top:5px}
        input[type="text"]::placeholder{color:#999}
</style>
<script>
$(function(){
    $("input[type='text']").keypress(function(e){
        if(e.keyCode == 13 && $(this).val().length){
            var _val = $(this).val();
            var _class = $(this).attr("class");
            $(this).val('');
            var _tar = $(".chat_wrap .inner").append('<div class="item '+_class+'"><div class="box"><p class="msg">'+_val+'</p><span class="time">'+currentTime()+'</span></div></div>');

            var lastItem = $(".chat_wrap .inner").find(".item:last");
            setTimeout(function(){
                lastItem.addClass("on");
            },10);

            var position = lastItem.position().top + $(".chat_wrap .inner").scrollTop();
            console.log(position);

            $(".chat_wrap .inner").stop().animate({scrollTop:position},500);
        }
    });

});

var currentTime = function(){
    var date = new Date();
    var hh = date.getHours();
    var mm = date.getMinutes();
    var apm = hh >12 ? "오후":"오전";
    var ct = apm + " "+hh+":"+mm+"";
    return ct;
}
</script>
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
 const showValue = (target) => {
	  // 선택한 option의 value 값
	  console.log(target.value);
	  localStorage.setItem('키',target.value);

	}
 

  </script>
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
   
   <!-- Favicon  -->
    <link rel="icon" href="images/favicon.png">
</head>
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
                    <a class="btn-outline-sm" href="index.jsp" id="back">돌아가기</a>
                </span>
            </div>
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
   <div class="chat_wrap">
      <div class="inner">

   </div>
   <input type="text" class="mymsg" placeholder="내용 입력">
   <input type="text" class="yourmsg" placeholder="내용 입력">
   </div>
   <div class="shop_wrap">
<!-- --------------------------------------------------------------------------- -->
      <div class="shop_info"><%
      
      String data = request.getParameter("data");
      
      goodsDTO gdto = null;
      memberDTO dto = (memberDTO) session.getAttribute("dto");
      ArrayList<goodsDTO> arr = null;
       
      int goodsseq=0;
      System.out.println("여기");
        try{
           System.out.println("여기1");
           goodsseq =  Integer.parseInt(request.getParameter("goodsseq"));
           System.out.println("받아옴 "+goodsseq);
        }catch(Exception e){
           
        }
        System.out.println("이름이 머니 = "+goodsseq);
        if(goodsseq==0){
           System.out.println("여기2");
          gdto = (goodsDTO) session.getAttribute("gdto");
        }
        else{
           System.out.println("여기3");
           goodsDAO dao = new goodsDAO();
           gdto = new goodsDTO(goodsseq);
           gdto = dao.goodsdetail(gdto);
           
           System.out.println("받아오기 = "+gdto.getName());
           
           
        }
      
      
      	out.print("<div class='shop_menu'>"+"상품 제목 :"+gdto.getName()+"</div>");
      	out.print("<div class='shop_img'><img style='width:250px; height:150px; position:absolute; left:30px;' class='product__details__pic__item--large'src='Upload/"+gdto.getImg()+"'></div>");
      	out.print("<div class='shop_price'>"+"상품 가격 :"+gdto.getPrice()+"</div>");
      	
   	%></div>
  	  <div id="map" style=" width:320px;height:200px;">
  	  
  	  </div>
  	 
  	  
  	  <table style="width:320px;">
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
									<select id="d1"onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
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
										<select id="d2" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
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
										<select id="d3" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
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
										<select id="d4" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
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
		                               <select id="d5" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
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
					<div><a href="maps.jsp" style="font-size:20px;position:absolute;left:130px;">지도 크게 보기</a></div>
					<form><input type="button" value="검색하기" onClick="window.location.href=window.location.href"></form>
					<div>
						<p id="onecctv"></p>
					</div>
  	  
   </div>
   
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9721db22573b52ec59546dbe834b5f05&libraries=services,clusterer,drawing"></script>
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
			//alert('성공');
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
		            content: '<div style="font-size:10px; width:100px; text-align:center; height:10px;">SUDDEN SAFE ZONE</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		        }
		  // 마커에 클릭이벤트를 등록합니다
		     kakao.maps.event.addListener(marker, 'click', function() {
		           // 마커 위에 인포윈도우를 표시합니다
		           //infowindow.open(map, marker);
		          


		         //location.href="chat.jsp?data="+encodeURI(encodeURIComponent(addr));
		         alert(addr);
		         document.getElementById("onecctv").innerHTML=addr;
		         
		     });
		    //} 

		}
			

		}
	}
		
			




	</script>
   
</body>
</html>