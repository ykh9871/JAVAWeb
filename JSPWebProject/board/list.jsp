<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style>
	body {
		font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		background-color: #1c1c1c;
		color: #e0e0e0;
		display: flex;
		flex-direction: column;
		align-items: center;
		height: 100vh;
		margin: 0;
	}

	h1 {
		font-size: 2.5rem;
		margin-top: 2rem;
		margin-bottom: 1.5rem;
		color: #4285f4;
		text-align: center;
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
<%
Class.forName("com.mysql.jdbc.Driver");
String dbUrl="jdbc:mysql://localhost:3306/odbo";
String dbUser="root";
String dbPassword="qwer1234";
Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPassword);
String sql="select * from board order by num desc";
PreparedStatement pstmt=con.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();
%>
	<h1>게시판</h1>
	<form action="writeForm.jsp" method="post">
		<input type="submit" value=" 글 작성 ">
	</form>
	<table border="1">
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>날짜</td>
			<td>조회수</td>
		</tr>
		<%
		while(rs.next()){
		%>
		<tr>
			<td><%=rs.getInt("num")%></td>
			<td><a href="content.jsp?num=<%=rs.getInt("num")%>"><%=rs.getString("subject")%></a></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getTimestamp("date")%></td>
			<td><%=rs.getInt("readcount")%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>
