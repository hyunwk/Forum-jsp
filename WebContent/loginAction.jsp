<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="connectDB.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

    String id = request.getParameter("userId");
	String pw = request.getParameter("userPW");
	
	Statement stat = null;
	ResultSet rs = null;
	
	String sql = "select * from user_info where id='"+id+"'";

	rs = stat.executeQuery(sql);
	
	int result = 0;
	
	if(rs.next()){
		//비번 체크
		if(pw == rs.getString("password")){
			result =1;
		}
	} else{
		//id 없을 시
		result=2;
	}

	request.setAttribute("result", result);
	rs.close();
	stat.close();
	conn.close();
%>
<jsp:forward page="loginResult.jsp"></jsp:forward>
</body>
</html>