<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc_kr");
%>    
<jsp:useBean id="memberInfo" class="kr.ac.green.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>���̵�</td>
			<td><jsp:getProperty property="id" name="memberInfo"/></td>
			<td>��ȣ</td>
			<td><jsp:getProperty property="password" name="memberInfo"/></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><jsp:getProperty property="name" name="memberInfo"/></td>
			<td>�̸���</td>
			<td><jsp:getProperty property="email" name="memberInfo"/></td>
		</tr>
	</table>
</body>
</html>