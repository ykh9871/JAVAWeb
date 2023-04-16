<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 전용 공간</title>
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
			border: none;
			border-top: 2px solid #757575;
			margin: 20px 0;
			width: 100%;
		}

		table {
			background-color: #2e2e2e;
			border-radius: 10px;
			padding: 20px;
			box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
			margin-top: 50px;
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
	<h1>회원 전용 공간</h1>
	<hr>
	<p>반갑습니다.<br>
	여기는 회원 전용 공간입니다.<br>
	회원을 탈퇴하려면 버튼을 눌러주세요.</p>
	<table border="0">
		<tr>
			<td>
				<form action="../board/list.jsp" method="post">
					<input type="submit" value="게시판">
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post">
					<input type="submit" value="로그 아웃">
				</form>
			</td>
			<td>
				<form action="withdraw.jsp" method="post">
					<input type="submit" value="회원 탈퇴하기">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>
