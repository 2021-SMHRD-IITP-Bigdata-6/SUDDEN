<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 

   //클릭한 해당 마크의 정보를 get방식으로 받아 나타내어줌
   String CAM_ADDR = request.getParameter("CAM_ADDR");
%>
<h2>CAM_ADDRESS : <%=CAM_ADDR %></h2>


</body>
</html>