<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
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

		input[type="text"],
		input[type="password"] {
			padding: 0.5rem;
			border-radius: 4px;
			border: none;
			margin-bottom: 1rem;
			width: 100%;
			max-width: 300px;
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
	<h1>로그인</h1>
	<hr>
	<%
    String u_id = request.getParameter("uID");
    String u_pw = request.getParameter("uPW");

    String sql = "SELECT * FROM members WHERE id='" + u_id + "' AND passwd='" + u_pw + "'";
    Statement sm = conn.createStatement();
    ResultSet rs = sm.executeQuery(sql);

    if(rs.next()){
   	session.setAttribute("memberId", u_id);
		session.setAttribute("memberPw", u_pw);
		
		out.println("새로운 세션 생성 성공 !<br>");
		out.println("[ " + u_id + " ]님이 입장하였습니다.<p>");
    } else {
		response.sendRedirect("userloginErr.jsp");
	}
    rs.close();
    sm.close();
    conn.close();
	%>
	<table border="0">
		<tr>
			<td>
				<form action="membership.jsp" method="post">
					<input type="submit" value="사용자 공간 이동">
				</form>
			</td>		
		</tr>
	</table>
</body>
</html>
