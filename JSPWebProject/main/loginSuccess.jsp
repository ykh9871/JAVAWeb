<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 관리자 로그인 </title>
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
	<h1>관리자 로그인</h1>
	<hr>
	<%
		String u_id = request.getParameter("uID");
		String u_pw = request.getParameter("uPW");
		
		if(u_id.equals("space") && u_pw.equals("123456"))
		{
			session.setAttribute("memberId", u_id);
			session.setAttribute("memberPw", u_pw);
			
			out.println("새로운 세션 생성 성공 ! <br>");
			out.println("관리자 [ " + u_id + " ]님이 입장하였습니다. <p>");
		}
		else
		{
			response.sendRedirect("loginErr.jsp");
		}
	%>
	<table border="0">
		<tr>
		<td>
			<form action="membersList.jsp" method="post">
				<input type="submit" value=" ◀ 등록 회원 관리하기 " >
			</form>
		</td>
		<td>
			<form action="logout.jsp" method="post">
				<input type="submit" value=" 로그 아웃 ▶">
			</form>
		</td>
	</table>
</body>
</html>
