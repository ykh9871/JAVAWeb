<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<head>
	<meta charset="UTF-8">
	<title>게시물</title>
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
			border-collapse: collapse;
			background-color: #fff;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		table td, table th {
			padding: 10px;
			border: 1px solid #ccc;
			text-align: center;
			vertical-align: middle;
		}
		table tr:nth-child(odd) {
			background-color: #f2f2f2;
		}
		table tr:hover {
			background-color: #e2e2e2;
		}
		form {
			display: inline-block;
			margin: 10px;
		}
		input[type="submit"] {
			background-color: #333;
			color: #fff;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}
		input[type="submit"]:hover {
			background-color: #555;
		}
	</style>
</head>
</head>
<body>
	<div class="container">
		<h1 class="text-center">게시물</h1>
		<div class="row justify-content-center">
			<div class="col-md-8">
				<%
					request.setCharacterEncoding("utf-8");
					int num=Integer.parseInt(request.getParameter("num"));
					Class.forName("com.mysql.jdbc.Driver");
					String dbUrl="jdbc:mysql://localhost:3306/odbo";
					String dbUser="root";
					String dbPassword="qwer1234";
					Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPassword);
					String sql="update board set readcount=readcount+1 where num=?";
					PreparedStatement pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, num);
					pstmt.executeUpdate();
					sql="select * from board where num=?";
					pstmt=con.prepareStatement(sql);
					pstmt.setInt(1, num);
					ResultSet rs=pstmt.executeQuery();
					if(rs.next()){
				%>
				<table class="table table-bordered">
					<tr>
						<th>글번호</th>
						<td><%=rs.getInt("num")%></td>
						<th>조회수</th>
						<td><%=rs.getInt("readcount")%></td>
					</tr>
					<tr>
						<th>작성자</th>
						<td><%=rs.getString("name")%></td>
						<th>날짜</th>
						<td><%=rs.getTimestamp("date")%></td>
					</tr>
					<tr>
						<th>제목</th>
						<td colspan="3"><%=rs.getString("subject")%></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><%=rs.getString("content")%></td>
					</tr>
					<tr>
						<td colspan="2">
							<form action="list.jsp" method="post">
								<input type="submit" value=" 글목록 " class="btn btn-secondary">
							</form>
						</td>
						<td>
							<form action="updateForm.jsp?num=<%=rs.getInt("num")%>" method="post">
								<input type="submit" value=" 글수정 " class="btn btn-primary">
							</form>
						</td>
						<td>
							<form action="deleteForm.jsp?num=<%=rs.getInt("num")%>" method="post">
								<input type="submit" value=" 글삭제 " class="btn btn-danger">
							</form>
						</td>
					</tr>
				</table>
				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>
