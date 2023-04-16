<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login Error</title>
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

		hr {
			width: 100%;
			border: none;
			border-bottom: 1px solid #757575;
			margin-bottom: 1rem;
		}

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			text-align: center;
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
			max-width: 300px;
		}

		input[type="submit"]:hover {
			background-color: #357ae8;
		}
	</style>
</head>
<body>
	<h1>로그인 에러</h1>
	<hr>
	로그인 오류입니다!<br>
	아이디와 비밀번호를 확인하세요.
	<form action="userlogin.jsp" name="err_form" method="post">
		<input type="submit" value="다시 로그인 ▶▶">
	</form>
</body>
</html>
