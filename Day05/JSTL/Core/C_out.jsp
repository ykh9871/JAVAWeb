<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>간단한 인사</title>
</head>
<body>
	안녕하세요, <c:out value="${param.ID}" default="guest" />님
</body>
</html>	