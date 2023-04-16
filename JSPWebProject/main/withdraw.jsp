<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 탈퇴 </title>
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

		fieldset {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 2rem;
			border: 1px solid #757575;
			border-radius: 5px;
			padding: 1rem;
			width: 300px;
		}

		legend {
			font-size: 1.2rem;
			font-weight: bold;
			margin-bottom: 1rem;
		}

		input[type="text"] {
			padding: 10px;
			margin-bottom: 1rem;
			width: 100%;
			box-sizing: border-box;
			border-radius: 4px;
			border: none;
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
	<h1>회원 탈퇴하기</h1>
	<hr>
	<form action="drawCheck.jsp" name="user_info" method="post">
		<fieldset>
			<legend>회원 탈퇴</legend>
			<p>
			아이디 : <br>
			<input type="text" name="userID">
			</p>
			<div align="center">
				<input type="submit" value=" 회원 탈퇴 ▶ ">
			</div>
		</fieldset>
	</form>
</body>
</html>