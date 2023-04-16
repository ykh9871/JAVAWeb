<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입</title>
	<style>
	  body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #1c1c1c;
    color: #000000; /* 검정색 */
    display: flex;
    flex-direction: column;
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

		form {
			background-color: #2e2e2e;
			border-radius: 10px;
			padding: 20px;
			box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
			width: 230px;
		}

		fieldset {
			border: none;
			margin: 0;
			padding: 0;
		}

		legend {
			font-size: 1.5rem;
			font-weight: bold;
			margin-bottom: 1rem;
		}

		input[type="text"],
		input[type="password"],
		input[type="email"] {
			padding: 0.5rem;
			border-radius: 4px;
			border: none;
			width: 100%;
			margin-bottom: 1rem;
		}

		input[type="reset"],
		input[type="submit"] {
			background-color: #4285f4;
			border: none;
			color: white;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin-right: 0.5rem;
			cursor: pointer;
			border-radius: 4px;
			font-weight: bold;
			width: 150px;
			margin-top: 10px;
		}

		input[type="reset"]:hover,
		input[type="submit"]:hover {
			background-color: #357ae8;
		}
	</style>
	<script type="text/javascript">
		function checkFun() {
		
			var f = document.user_info;
			if(f.userID.value.length < 2 || f.userID.value.length > 16)
			{
				alert("아이디는 2~16자 이내로 입력해야 합니다.");
				f.userID.focus();
				return false;
			}
			else if(f.userPW.value.length < 6)
			{
				alert("비밀번호는 6자 이상으로 입력해야 합니다.");
				f.userPW.focus();
				return false;
			}
			else if(f.userMAIL.value == "")
			{
				alert("이메일 주소는 반드시 입력해야 합니다.");
				f.userMAIL.focus();
				return false;
			}
			else return true;
		}
	</script>
</head>
<body>
<div style="display: flex; flex-direction: column; align-items: center;">
  <h1>회원 가입</h1>
  <form action="insertDB.jsp" name="user_info" method="post" onsubmit="return checkFun()" style="background-color: white; border-radius: 10px; padding: 20px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); width: 400px;">
    <fieldset style="border: none; margin: 0; padding: 0; text-align: center;">
      <legend style="font-size: 1.5rem; font-weight: bold; margin-bottom: 1rem;">회원 가입 화면</legend>
      <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-bottom: 0.5rem;">
        <label for="userID" style="width: 25%;">아이디 :</label>
        <input type="text" size="16" name="userID" style="padding: 0.5rem; border-radius: 4px; border: 1px solid #ccc; width: 70%;">
      </div>
      <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-bottom: 0.5rem;">
        <label for="userPW" style="width: 25%;">비밀번호 :</label>
        <input type="password" size="16" name="userPW" style="padding: 0.5rem; border-radius: 4px; border: 1px solid #ccc; width: 70%;">
      </div>
      <div style="display: flex; flex-direction: row; align-items: center; justify-content: space-between; margin-bottom: 0.5rem;">
        <label for="userMAIL" style="width: 25%;">이메일 :</label>
        <input type="email" size="30" name="userMAIL" style="padding: 0.5rem; border-radius: 4px; border: 1px solid #ccc; width: 70%;">
      </div>
      <input type="reset" value=" ◀ 다시작성 " style="background-color: #4285f4; border: none; color: white; padding: 18px 40px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin-right: 10px; cursor: pointer; border-radius: 4px; font-weight: bold;">
			<input type="submit" value=" 가입하기 ▶ " style="background-color: #4285f4; border: none; color: white; padding: 18px 40px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin-left: 10px; cursor: pointer; border-radius: 4px; font-weight: bold;">
    </fieldset>
  </form>
</div>
</body>
</html>