<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 회원 등록 성공 </title>
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
	<h1>회원 등록 성공</h1>
	<hr>
	<p>축하합니다! </p>
	<p>로그인에 성공하셨습니다! </p>
	<p>사용자 공간으로 이동해보세요.^^	</p>
	<br>
	<table border="0">
		<tr>
			<td>
				<form action="membership.jsp" method="post" >
					<input type="submit" value=" 사용자 공간 이동 " >
				</form>
			</td>
		</tr>
	</table>
</body>
</html>
