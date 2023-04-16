<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인 화면</title>
	<style>
		body {
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			background-color: #1c1c1c;
			color: #e0e0e0;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			height: 100vh;
			margin: 0;
		}

		h1 {
			font-size: 2.5rem;
			margin-bottom: 1.5rem;
			color: #4285f4;
			text-align: center;
		}

		h2 {
			font-size: 1.2rem;
			margin-bottom: 2rem;
			color: #757575;
			text-align: center;
		}

		table {
			background-color: #2e2e2e;
			border-radius: 10px;
			padding: 20px;
			box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
		}

		input[type="submit"] {
			background-color: #4285f4;
			border: none;
			color: white;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
			border-radius: 4px;
			font-weight: bold;
			width: 200px;
			margin-top: 10px;
		}

		input[type="submit"]:hover {
			background-color: #357ae8;
		}
	</style>
</head>
<body>
	<h1>Welcome To Gyu's Page</h1>
	<h2>안녕하세요 윤규헌의 JSP프로젝트 페이지 입니다.</h2>
	<table border="0">
		<tr>
			<td>
				<form action="login.jsp" method="post">
					<input type="submit" value="관리자 접속하기">
				</form>
			</td>
			<td>
				<form action="signup.jsp" method="post">
					<input type="submit" value="회원 가입">
				</form>
			</td>
			<td>
				<form action="userlogin.jsp" method="post">
					<input type="submit" value="사용자 접속하기">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>
