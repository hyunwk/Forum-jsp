<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
%>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert title here</title></head>
<body>

<div style="background-color:black; height:30px;">
	<%@ include file ="main_menu.jsp" %></div>
	
<div style="background-color:lightgrey; text-align:center; height: 200px; font-size:30px;">
     <b><br><br>도서 웹 쇼핑몰</b><br>
</div>

<div style="text-align:center;"><b>Welcome to Book Market!</b><br></div>
<div style="text-align:center;">현재 접속 시간: <%= sf.format(nowTime) %> </div>
<div style="text-align:center;"><%@ include file ="main_footer.jsp" %> </div>
</body></html>



