<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${result==0 }">
			<script type="text/javascript">
				alert("로그인 성공");
				location.href="main_index.jsp";			
			</script>
		</c:when>
		<c:when test="${result ==1 }">
			<script type="text/javascript">
				alert("비밀번호 오류");
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${result ==2 }">
			<script type="text/javascript">
				alert("아이디가 잘못되었습니다");
				history.go(-1);
			</script>
		</c:when>
	</c:choose>
</body>
</html>