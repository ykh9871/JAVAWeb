<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<style>
  body {
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
  }
  h1 {
			font-size: 36px;
			font-weight: bold;
			margin-top: 40px;
			margin-bottom: 20px;
			text-align: center;
	}
  form {
  width: 150%;
  margin: 0 auto;
	}
	
	table {
	  width: 100%;
	}
  td, th {
    padding: 10px;
    border: 1px solid #ccc;
    text-align: left;
    vertical-align: top;
  }
  input[type="text"], input[type="password"], textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
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
<body>
<div class="container">
	<h1 class="text-center">글 수정</h1>
	<div class="row justify-content-center">
		<div class="col-md-8">
			<%
			int num=Integer.parseInt(request.getParameter("num"));
			Class.forName("com.mysql.jdbc.Driver");
			String dbUrl="jdbc:mysql://localhost:3306/odbo";
			String dbUser="root";
			String dbPass="qwer1234";
			Connection con=DriverManager.getConnection(dbUrl, dbUser, dbPass);

			String sql="select * from board where num=?";
			PreparedStatement pstmt=con.prepareStatement(sql);

			pstmt.setInt(1, num);
			ResultSet rs=pstmt.executeQuery();

			while(rs.next()){
			%>
			<form action="updatePro.jsp" method="post">
			    <input type="hidden" name="num" value="<%=rs.getInt("num") %>">
			    <table class="table table-bordered">
			        <tr>
			            <th>글쓴이</th>
			            <td><input type="text" name="name" value="<%=rs.getString("name") %>"></td>
			        </tr>
			        <tr>
			            <th>비밀번호</th>
			            <td><input type="password" name="pass"></td>
			        </tr>
			        <tr>
			            <th>제목</th>
			            <td><input type="text" name="subject" value="<%=rs.getString("subject") %>"></td>
			        </tr>
			        <tr>
			            <th>내용</th>
			            <td><textarea rows="10" name="content"><%=rs.getString("content") %></textarea></td>
			        </tr>
			        <tr>
			            <td colspan="2"><input type="submit" value="글수정" class="btn btn-primary"></td>
			        </tr>
			    </table>
			</form>
			<%} %>
		</div>
	</div>
</div>
</body>
</html>
