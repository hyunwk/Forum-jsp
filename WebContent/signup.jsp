<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<div style="background-color:black; height:30px;">
	<%@ include file ="main_menu.jsp" %></div>
<script type="text/javascript">
	function check(){
		if(!frm.signupId.value){
			alert("아이디를 입력하세요");
			frm.signupId.focus();
			return false;
		}
		if(!frm.signupPw.value){
			alert("비밀번호를 입력하세요");
			frm.signupPw.focus();
			return false;
		}
		if(!frm.signupPwCheck.value){
			alert("비밀번호 확인을 입력하세요");
			frm.signupPwCheck.focus();
			return false;
		}
		if(!frm.signupName.value){
			alert("이름을 입력하세요");
			frm.signupName.focus();
			return false;
		}
		if(!frm.signupPw.value.equals(frm.signupPwCheck.value)){
			alert("비밀번호가 다릅니다.");
			return false;
		}
	}
</script>
	<!-- 회원가입 폼 -->
	<br><br><br><br>
	<h2 style="text-align: center;">회원가입 화면</h2>
	<form action="signupAction.jsp" name="frm" onsubmit="return check()">
	<table class="SignUpForm" style="margin-right: auto; margin-left: auto;	" >
			<tr> 
				<td>
					아이디  
				</td>
				<td>
					<input type="text" placeholder="아이디" name="signupId" autofocus="autofocus">
				</td>
			</tr>
			<tr>
				<td class="pw">
					비밀번호 
				</td>
				<td>
					 <input type="password" placeholder="비밀번호" name="signupPw">
				</td>
			</tr>
			<tr>
				<td class="pwCheck">
					비밀번호 확인 
				</td>
				<td>
					<input type="password" placeholder="비밀번호" name="signupPwCheck">
				</td>
			</tr>
			<tr>
				<td class="name">
					이름 
				</td>
				<td>
				 	<input type="text" placeholder="이름" name="signupName">
				</td>
			</tr>
			<tr>
				<td class="signupBtn" colspan="2" style="margin: auto; text-align: center;">
					<br>
					<input type="submit" value="회원가입">
					<input type="reset" value="취소">
				</td>
			</tr>
	</table>
	</form>
</body>
</body>
</html>