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
<title>ä��</title>
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
    var apm = hh >12 ? "����":"����";
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
	  // ������ option�� value ��
	  console.log(target.value);
	  localStorage.setItem('Ű',target.value);

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
                    <a class="btn-outline-sm" href="index.jsp" id="back">���ư���</a>
                </span>
            </div>
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->
   <div class="chat_wrap">
      <div class="inner">

   </div>
   <input type="text" class="mymsg" placeholder="���� �Է�">
   <input type="text" class="yourmsg" placeholder="���� �Է�">
   </div>
   <div class="shop_wrap">
<!-- --------------------------------------------------------------------------- -->
      <div class="shop_info"><%
      
      String data = request.getParameter("data");
      
      goodsDTO gdto = null;
      memberDTO dto = (memberDTO) session.getAttribute("dto");
      ArrayList<goodsDTO> arr = null;
       
      int goodsseq=0;
      System.out.println("����");
        try{
           System.out.println("����1");
           goodsseq =  Integer.parseInt(request.getParameter("goodsseq"));
           System.out.println("�޾ƿ� "+goodsseq);
        }catch(Exception e){
           
        }
        System.out.println("�̸��� �Ӵ� = "+goodsseq);
        if(goodsseq==0){
           System.out.println("����2");
          gdto = (goodsDTO) session.getAttribute("gdto");
        }
        else{
           System.out.println("����3");
           goodsDAO dao = new goodsDAO();
           gdto = new goodsDTO(goodsseq);
           gdto = dao.goodsdetail(gdto);
           
           System.out.println("�޾ƿ��� = "+gdto.getName());
           
           
        }
      
      
      	out.print("<div class='shop_menu'>"+"��ǰ ���� :"+gdto.getName()+"</div>");
      	out.print("<div class='shop_img'><img style='width:250px; height:150px; position:absolute; left:30px;' class='product__details__pic__item--large'src='Upload/"+gdto.getImg()+"'></div>");
      	out.print("<div class='shop_price'>"+"��ǰ ���� :"+gdto.getPrice()+"</div>");
      	
   	%></div>
  	  <div id="map" style=" width:320px;height:200px;">
  	  
  	  </div>
  	 
  	  
  	  <table style="width:320px;">
							<tr>
						       <td id="td1">����</td>
						          	<td>	
						          		<select id="browsers2" name="browsers2">
						          		<option value="����">����</option>
									    <option value="����Ư����">����Ư����</option>
									    <option value="���ֱ�����">���ֱ�����</option>
									    <option value="�λ걤����">�λ걤����</option>
									    <option value="��õ������">��õ������</option>
									    <option value="�뱸������">�뱸������</option>
									    <option value="����������">����������</option>
									    <option value="��걤����">��걤����</option>
									    <option value="����Ư����ġ��">����Ư����ġ��</option>
									    <option value="��⵵">��⵵</option>
									    <option value="������">������</option>
									    <option value="��û����">��û����</option>
									    <option value="��û�ϵ�">��û�ϵ�</option>
									    <option value="��󳲵�">��󳲵�</option>
									    <option value="���ϵ�">���ϵ�</option>
									    <option value="����ϵ�">����ϵ�</option>
									    <option value="���󳲵�">���󳲵�</option>
									    <option value="���ֵ�">���ֵ�</option>
										</select>
										</td>
						        </tr>
						        
								<tr>
									<td id="td1">����</td>
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
										<option value="0">����</option>
									    <option value="3">���걸</option>
									    <option value="4">�ϱ�</option>
									    <option value="2">����</option>
									    <option value="1">����</option>
									    <option value="5">����</option>
										</select></td>
								</tr>
								<tr>						
									<td id="td1">��/��/��</td>
									<td>
									<!-- ���� -->
									<select id="d1"onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="����">����</option>
									    <option value="����">����</option>
									    <option value="���ҵ�">���ҵ�</option>
									    <option value="��뵿">��뵿</option>
									    <option value="������">������</option>
									    <option value="���̵�">���̵�</option>
									    <option value="������">������</option>
									    <option value="���ݵ�">���ݵ�</option>
									    <option value="�渲��">�渲��</option>
									    <option value="�絿">�絿</option>
									    <option value="������">������</option>
									    <option value="����">����</option>
									    <option value="��">��</option>
									    <option value="������">������</option>
									    <option value="�۾ϵ�">�۾ϵ�</option>
									    <option value="���ϵ�">���ϵ�</option>
									    <option value="��õ��">��õ��</option>
									    <option value="���嵿">���嵿</option>
									    <option value="���̵�">���̵�</option>
									    <option value="���굿">���굿</option>
									    <option value="�ֿ���">�ֿ���</option>
									    <option value="������">������</option>
									    <option value="��ϵ�">��ϵ�</option>
									    <option value="�Ӿϵ�">�Ӿϵ�</option>
									    <option value="���ϵ�">���ϵ�</option>
									    <option value="�縲��">�縲��</option>
									    <option value="�渲��">�渲��</option>
									    <option value="���ҵ�">���ҵ�</option>
									    <option value="���ӵ�">���ӵ�</option>
									    <option value="ȭ�嵿">ȭ�嵿</option>
									    <option value="ĥ����">ĥ����</option>
									    <option value="������">������</option>
									    <option value="�����">�����</option>
									    <option value="���嵿">���嵿</option>
									    <option value="������">������</option>
									    <option value="���굿">���굿</option>
									    <option value="������">������</option>
									    <option value="�渲��">�渲��</option>
									    <option value="���̵�">ȿ����</option>
										</select>
										<!-- ���� -->
										<select id="d2" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="����">����</option>
									    <option value="���ε�">���ε�</option>
									    <option value="�ݳ���">�ݳ���</option>
									    <option value="���嵿">���嵿</option>
									    <option value="���⵿">���⵿</option>
									    <option value="���ǵ�">���ǵ�</option>
									    <option value="�õ�">�õ�</option>
									    <option value="�嵿">�嵿</option>
									    <option value="����">����</option>
									    <option value="�踲��">�踲��</option>
									    <option value="�����">�����</option>
									    <option value="���굿">���굿</option>
									    <option value="�п">�п</option>
									    <option value="������">������</option>
									    <option value="������">������</option>
										</select>
										<!-- ���걸 -->
										<select id="d3" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="����">����</option>
									    <option value="������">������</option>
									    <option value="���굿">���굿</option>
									    <option value="��ȣ��">��ȣ��</option>
									    <option value="���̵�">���̵�</option>
									    <option value="������">������</option>
									    <option value="�����">�����</option>
									    <option value="���ϵ�">���ϵ�</option>
									    <option value="���̵�">���̵�</option>
									    <option value="��굿">��굿</option>
									    <option value="Ȳ�浿">Ȳ�浿</option>
									    <option value="��ȣ��">��ȣ��</option>
									    <option value="��Ƶ�">��Ƶ�</option>
									    <option value="��õ��">��õ��</option>
									    <option value="���ϵ�">���ϵ�</option>
									    <option value="���赿">���赿</option>
									    <option value="�־ϵ�">�־ϵ�</option>
									    <option value="�����">�����</option>
									    <option value="��â��">��â��</option>
									    <option value="�Ű���">�Ű���</option>
									    <option value="���">���</option>
									    <option value="��û��">��û��</option>
									    <option value="���">���</option>
									    <option value="�����">�����</option>
									    <option value="�漮��">�漮��</option>
									    <option value="�ϳ���">�ϳ���</option>
									    <option value="�����">�����</option>
									    <option value="������">������</option>
									    <option value="���">���</option>
									    <option value="���ӵ�">���ӵ�</option>
									    <option value="�긷��">�긷��</option>
									    <option value="��浿">��浿</option>
									    <option value="�ŷ浿">�ŷ浿</option>
									    <option value="������">������</option>
									    <option value="�Ӱ">�Ӱ</option>
									    <option value="���굿">���굿</option>
									    <option value="���굿">���굿</option>
									    <option value="��ȣ��">��ȣ����</option>
									    <option value="�ϻ굿">�ϻ굿</option>
									    <option value="���赿">���赿</option>
									    <option value="������">������</option>
									    <option value="��⵿">��⵿</option>
									    <option value="���浿">���浿</option>
									    <option value="�۴뵿">�۴뵿</option>
									    <option value="����">����</option>
									    <option value="������">������</option>
									    <option value="��ϵ�">��ϵ�</option>
									    <option value="���̵�">���̵�</option>
									    <option value="���׵�">���׵�</option>
									    <option value="�뵿">�뵿</option>
									    <option value="��">��</option>
									    <option value="������">������</option>
									    <option value="��ȭ��">��ȭ��</option>
									    <option value="���굿">���굿</option>
									    <option value="���굿">���굿</option>
									    <option value="������">������</option>
									    <option value="�ۻ굿">�ۻ굿</option>
									    <option value="����">����</option>
									    <option value="���">���</option>
									    <option value="��ŵ�">��ŵ�</option>
									    <option value="���굿">���굿</option>
									    <option value="��굿">��굿</option>
									    <option value="������">������</option>
									    <option value="������">������</option>
									    <option value="÷�ܵ�">÷�ܵ�</option>
									    <option value="���">���</option>
										</select>
										<!-- �ϱ� -->
										<select id="d4" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
										<option value="����">����</option>
		                                <option value="���ﵿ">���ﵿ</option>
		                                <option value="����">����</option>
		                                <option value="������">������</option>
		                                <option value="�ϵ�">�ϵ�</option>
		                                <option value="�ӵ�">�ӵ�</option>
		                                <option value="�žȵ�">�žȵ�</option>
		                                <option value="�����">�����</option>
		                                <option value="������">������</option>
		                                <option value="��ϵ�">��ϵ�</option>
		                                <option value="��굿">��굿</option>
		                                <option value="ǳ�⵿">ǳ�⵿</option>
		                                <option value="���ﵿ">���ﵿ</option>
		                                <option value="��ȭ��">��ȭ��</option>
		                                <option value="�ξϵ�">�ξϵ�</option>
		                                <option value="��ġ��">��ġ��</option>
		                                <option value="�ﰢ��">�ﰢ��</option>
		                                <option value="�Ű">�Ű</option>
		                                <option value="��ȿ��">��ȿ��</option>
		                                <option value="���ǵ�">���ǵ�</option>
		                                <option value="�ݰ">�ݰ</option>
		                                <option value="������">������</option>
		                                <option value="ûǳ��">ûǳ��</option>
		                                <option value="ȭ�ϵ�">ȭ�ϵ�</option>
		                                <option value="��">��</option>
		                                <option value="������">������</option>
		                                <option value="���̵�">���̵�</option>
		                                <option value="�ϰ">�ϰ</option>
		                                <option value="��굿">��굿</option>
		                                <option value="������">������</option>
		                                <option value="�ſ뵿">�ſ뵿</option>
		                                <option value="��ε�">��ε�</option>
		                                <option value="���ߵ�">���ߵ�</option>
		                                <option value="�·ɵ�">�·ɵ�</option>
		                                <option value="���">���</option>
		                                <option value="ȿ�ɵ�">ȿ�ɵ�</option>
		                                <option value="������">������</option>
		                                <option value="�밭��">�밭��</option>
		                                <option value="���뵿">���뵿</option>
		                                <option value="���⵿">���⵿</option>
		                                <option value="���̵�">���̵�</option>
		                                <option value="���浿">���浿</option>
		                                <option value="�߾ӵ�">�߾ӵ�</option>
		                                <option value="���">���</option>
		                               </select>
		                                <!-- ���� -->
		                               <select id="d5" onchange="showValue(this)" style="display:none;margin-left: auto; margin-right: auto;">
		                               <option value="����">����</option>
		                               <option value="�絿">�絿</option>
		                               <option value="�󼺵�">�󼺵�</option>
		                               <option value="��õ��">��õ��</option>
		                               <option value="���̵�">���̵�</option>
		                               <option value="���ﵿ">���ﵿ</option>
		                               <option value="���̵�">���̵�</option>
		                               <option value="ȭ����">ȭ����</option>
		                               <option value="ġ��">ġ��</option>
		                               <option value="���浿">���浿</option>
		                               <option value="��â��">��â��</option>
		                               <option value="���ϵ�">���ϵ�</option>
		                               <option value="��ε�">��ε�</option>
		                               <option value="ǳ�ϵ�">ǳ�ϵ�</option>
		                               <option value="������">������</option>
		                               <option value="��ȣ��">��ȣ��</option>
		                               <option value="������">������</option>
		                               <option value="�ſ���">�ſ���</option>
		                               <option value="��õ��">��õ��</option>
		                               <option value="������">������</option>
		                               <option value="�󹫵�">�󹫵�</option>
                                       </select>
                                       </td> 
								</tr>
								
					</table>
					<div><a href="maps.jsp" style="font-size:20px;position:absolute;left:130px;">���� ũ�� ����</a></div>
					<form><input type="button" value="�˻��ϱ�" onClick="window.location.href=window.location.href"></form>
					<div>
						<p id="onecctv"></p>
					</div>
  	  
   </div>
   
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9721db22573b52ec59546dbe834b5f05&libraries=services,clusterer,drawing"></script>
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
			//alert('����');
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
		            content: '<div style="font-size:10px; width:100px; text-align:center; height:10px;">SUDDEN SAFE ZONE</div>'
		        });
		        infowindow.open(map, marker);

		        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
		        map.setCenter(coords);
		        }
		  // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
		     kakao.maps.event.addListener(marker, 'click', function() {
		           // ��Ŀ ���� ���������츦 ǥ���մϴ�
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