<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="num1" value="7" />
<c:set var="num2" value="9" />
<c:set var="result" value="${num1*num2}" />
<html>
	<head><title>���� ���α׷�</title></head>
	<body>
		${num1}�� ${num2}�� ����? ${result}
	</body>
</html>