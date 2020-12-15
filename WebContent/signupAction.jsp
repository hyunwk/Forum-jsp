<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		String id = request.getParameter("signupId");
		String pw = request.getParameter("signupPw");
		String name =  request.getParameter("signupName");

		PreparedStatement pstat =null;
		ResultSet rs = null;
		
		int result=0;
		
		String sql1 = "select * from user_info where id='"+id+"'";
		String sql ="insert into user_info values(?,?,?)";
		
		int userChk=0;

		pstat = conn.prepareStatement(sql1);

		rs=pstat.executeQuery();
		
		if(rs.next()){
			userChk=1;
		} else {
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, id);
			pstat.setString(2, pw);
			pstat.setString(3, name);
			
			result=pstat.executeUpdate();
		}
		request.setAttribute("result", result);
		request.setAttribute("userChk", userChk);
		
		rs.close();
		pstat.close();
		conn.close();
	%>
	<jsp:forward page="signupResult.jsp"></jsp:forward>
</body>
</html>