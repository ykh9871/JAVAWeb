<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 로그 아웃 </title>
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

		hr {
			border: 1px solid #757575;
			width: 50%;
			margin: 2rem 0;
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
	<h1>로그 아웃</h1>
	<hr>
	<%
		// session 무효화
		session.invalidate();
	%>
	세션을 종료 후 로그 아웃을 수행하였습니다. <br>
	그동안 수고 많으셨습니다.
	<p>
	<form action="main.jsp" method="post">
		<input type="submit" value=" 메인 메뉴 ">
	</form>
</body>
</html>
