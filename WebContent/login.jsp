<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<title>jsp 게시판 사이트</title>
</head>
<script type="text/javascript">
	function check(){
		if(!frm.userId.value){
			alert("아이디를 입력하세요");
			frm.userId.focus();
			return false;
		}
		if(!frm.userPW.value){
			alert("비밀번호를 입력하세요");
			frm.userPw.focus();
			return false;
		}
	}
</script>
<body>
<div style="background-color:black; height:30px;">
	<%@ include file ="main_menu.jsp" %></div>

	<!-- 로그인 폼 -->
	<div class="loginAction" style="text-align: center;padding:20px;">
		<h2 >로그인 화면</h2>
		<form action ="loginAction.jsp" name="frm" onsubmit="return check()">
			<div class="id">
				<input type="text" placeholder="아이디" name="userId" autofocus="autofocus">
			</div>
			<div class="pw">
				<input type="password" placeholder="비밀번호" name="userPW">
			</div>
			<div class="loginBtn">
				<br><input type="submit" value="로그인">
			</div>
		</form>
	</div>
</body>
</html>