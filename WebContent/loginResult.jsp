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
				alert("�α��� ����");
				location.href="main_index.jsp";			
			</script>
		</c:when>
		<c:when test="${result ==1 }">
			<script type="text/javascript">
				alert("��й�ȣ ����");
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${result ==2 }">
			<script type="text/javascript">
				alert("���̵� �߸��Ǿ����ϴ�");
				history.go(-1);
			</script>
		</c:when>
	</c:choose>
</body>
</html>