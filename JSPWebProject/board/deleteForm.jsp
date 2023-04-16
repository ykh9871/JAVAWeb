<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글 삭제</title>
	<style>
		body {
			font-family: Arial, Helvetica, sans-serif;
			font-size: 16px;
			line-height: 1.6;
			background-color: #f2f2f2;
			color: #333;
		}
		h1 {
			font-size: 36px;
			font-weight: bold;
			margin-top: 40px;
			margin-bottom: 20px;
			text-align: center;
		}
		table {
			width: 80%;
			margin: 0 auto;
			margin-top: 30px;
			border-collapse: collapse;
			background-color: #fff;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		th, td {
			text-align: center;
			padding: 10px;
			border: 1px solid #ccc;
		}
		th {
			background-color: #222;
			color: #f2f2f2;
		}
		input[type="password"] {
			width: 100%;
			padding: 10px;
			border: 1px solid #ccc;
			border-radius: 3px;
			box-sizing: border-box;
			font-family: Arial, Helvetica, sans-serif;
			font-size: 16px;
			line-height: 1.6;
			background-color: #f2f2f2;
			color: #333;
		}
		input[type="submit"] {
			background-color: #333;
			color: #fff;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.3s ease;
			font-family: Arial, Helvetica, sans-serif;
			font-size: 16px;
			line-height: 1.6;
		}
		input[type="submit"]:hover {
			background-color: #555;
		}
	</style>
</head>
<body>
	<h1>글 삭제</h1>
	<%
	int num=Integer.parseInt(request.getParameter("num"));
	%>
	<form action="deletePro.jsp" method="get">
		<input type="hidden" name="num" value="<%=num %>">
		<table>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="글삭제"></td>
			</tr>
</table>
</form>
</body>
</html>