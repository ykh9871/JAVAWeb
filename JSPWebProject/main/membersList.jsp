<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
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

		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 2rem;
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
	<h1>등록 회원 관리</h1>
	<hr>
	<%
		String u_id = request.getParameter("userID");
		String u_pw = request.getParameter("userPW");
		String u_mail = request.getParameter("userMAIL");
		
		Statement sm = conn.createStatement();
		ResultSet rs = sm.executeQuery("SELECT id, email, signuptime FROM members");
		
		String str = "";
		int count = 1;
		
		while(rs.next()) {
			str += count + " : " + rs.getString("id") + " / " + rs.getString("email")
					+ " / " + rs.getString("signuptime") + "<br>";
			count++;
		}
		out.print(str);
		
		rs.close();
		sm.close();
		conn.close();
	%>
	<hr>
	<table border="0">
		<tr>
			<td>
				<form action="withdraw.jsp" method="post">
					<input type="submit" value=" ◀ 회원 탈퇴시키기 ">
				</form>
			</td>
			<td>
				<form action="logout.jsp" method="post">
					<input type="submit" value=" 로그 아웃 ▶ ">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>