<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Login Form </title>
	<style>
		body {
			background-color: #0D1117;
			color: #C9D1D9;
			font-family: 'Roboto', sans-serif;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			height: 100vh;
			margin: 0;
		}
		h1 {
			font-size: 2.5rem;
			margin-bottom: 1.5rem;
			color: #4285f4;
			text-align: center;
		}
		input[type="text"], input[type="password"] {
			border: 1px solid #30363D;
			background-color: #0D1117;
			color: #C9D1D9;
		}
		input[type="submit"] {
			background-color: #238636;
			border: none;
			color: white;
			padding: 8px 16px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 14px;
			margin: 4px 2px;
			cursor: pointer;
			border-radius: 4px;
			font-weight: bold;
		}
		input[type="submit"]:hover {
			background-color: #2EA043;
		}
	</style>
	<script type="text/javascript">
	function checkFun()
	{
		var f = document.loginForm;
		if(f.uID.value == "")
		{
			alert("아이디를 입력해 주세요.");
			f.uID.focus();
			return false;
		}
		else if(f.uPW.value == "")
		{
			alert("비밀번호를 입력해 주세요.");
			f.uPW.focus();
			return false;
		}
		else return true;
	}
	</script>
</head>
<body>
	<h1>관리자 로그인</h1>
	<form name="loginForm" action="loginSuccess.jsp"
			method="post" onsubmit="return checkFun()" >
		<fieldset style="width:260px; border-color: #30363D;">
			<legend>관리자 로그인 화면 </legend><p>
			<table>
				<tr height="30">
					<td align="right">아이디&nbsp;</td>
					<td><input type="text" name="uID"></td>
				</tr>
				<tr height="30">
					<td align="right">비밀번호&nbsp;</td>
					<td><input type="password" name="uPW"></td>
				</tr>
				<tr height="50">
					<td></td>	
					<td><input type="submit" value=" 로그인 ▶▶ "></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>