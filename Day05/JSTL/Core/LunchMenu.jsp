<%@ page contentType="test/html; charset=euc-kr" %>
<%
	String arr[] = {"�Ұ�� ���", "���Ƕ��̽�", "�ᱹ��"};
	request.setAttribute("MENU", arr);
%>
<jsp:forward page="LunchMenuView.jsp" />