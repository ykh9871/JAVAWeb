<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자 포맷</title>
</head>
<body>
	금액: <fmt:formatNumber value="1000000" type="currency" currencySymbol="￦" /><br>
	퍼센트: <fmt:formatNumber value="0.99" type="percent" />
</body>
</html>