<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	<c:choose>
		<c:when test="${userChk >0 }">
			<script type="text/javascript">
				alert("�̹� ��ϵ� id");
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${result >0 }">
			<script type="text/javascript">
				alert("��� ��� ����");
				location.href="main_index.jsp";
			</script>
		</c:when>
		<c:when test="${result <= 0 }">
			<script type="text/javascript">
				alert("��� ��� ����");
				history.go(-1);
			</script>
		</c:when>
	</c:choose>
</body>
</html>