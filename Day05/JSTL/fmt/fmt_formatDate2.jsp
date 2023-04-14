<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재의 시각</title>
</head>
<body>
	[S] <fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="short" /><br>
	[M] <fmt:formatDate value="${date}" type="both" dateStyle="medium" timeStyle="short" /><br>
	[L] <fmt:formatDate value="${date}" type="both" dateStyle="long" timeStyle="short" /><br>
	[F] <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="short" /><br>
</body>
</html>