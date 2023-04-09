<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 비밀번호 정보</title>
</head>
<body>
    HOME > Personal Information Inquiry
    <hr>
    <%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("password");   
    %>
    <p> 아이디 : <%= id %>
    <p> 비밀번호 : <%= pw %>
</body>
</html>