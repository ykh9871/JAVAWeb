<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Form</title>
	<script type="text/javascript">
		function checkFun() {
			var f = document.loginForm;
			if(f.uID.value == "") {
				alert("아이디를 입력해 주세요.");
				f.uID.focus();
				return false;
			} else if(f.uPW.value == "") {
				alert("비밀번호를 입력해 주세요.");
				f.uPW.focus();
				return false;
			} else {
				return true;
			}
		}
	</script>
	<style>
		body {
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			background-color: #1c1c1c;
			color: #e0e0e0;
			height: 100vh;
			margin: 0;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
		}
		h1 {
			font-size: 2.5rem;
			margin-bottom: 1.5rem;
			color: #4285f4;
			text-align: center;
		}

		fieldset {
			width: 260px;
		}

		legend {
			font-size: 1.2rem;
			font-weight: bold;
		}

		hr {
			width: 100%;
			border: none;
			border-bottom: 1px solid #757575;
			margin-bottom: 1rem;
		}

		input[type="text"],
		input[type="password"] {
			padding: 0.5rem;
			border-radius: 4px;
			border: none;
			margin-bottom: 1rem;
			width: 100%;
		}

		input[type="submit"] {
			background-color: #4285f4;
			border: none;
			color: white;
			padding: 1rem 2rem;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 1rem;
			margin: 1rem 0;
			cursor: pointer;
			border-radius: 4px;
			font-weight: bold;
			width: 100%;
		}

		input[type="submit"]:hover {
			background-color: #357ae8;
		}
	</style>
</head>
<body>
	<h1>로그인</h1>
	<hr>
	<form name="loginForm" action="userloginSuccess.jsp" method="post" onsubmit="return checkFun()">
		<fieldset>
			<legend>로그인 화면</legend>
			<table>
				<tr>
					<td align="right">아이디&nbsp;</td>
					<td><input type="text" name="uID"></td>
				</tr>
				<tr>
					<td align="right">비밀번호&nbsp;</td>
					<td><input type="password" name="uPW"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="로그인 ▶▶"></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>