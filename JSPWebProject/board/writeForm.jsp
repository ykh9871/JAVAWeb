<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 작성</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #1c1c1c;
            color: #e0e0e0;
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
        
        table {
            background-color: #2e2e2e;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        
        input[type="text"], textarea {
            background-color: #e0e0e0;
            border: none;
            padding: 10px;
            font-size: 1rem;
            border-radius: 4px;
            margin-bottom: 10px;
            width: 100%;
        }
        
        input[type="submit"] {
            background-color: #4285f4;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
            font-weight: bold;
            width: 200px;
            margin-top: 10px;
        }
        
        input[type="submit"]:hover {
            background-color: #357ae8;
        }
    </style>
</head>
<body>
    <h1>글쓰기</h1>
    
    <form action="writePro.jsp" method="post">
        <table>
            <tr>
                <td>글쓴이</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="text" name="pass"></td>
            </tr>
            <tr>
                <td>제목</td>
                <td><input type="text" name="subject"></td>
            </tr>
            <tr>
                <td>내용</td>
                <td><textarea rows="10" cols="20" name="content"></textarea></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="글쓰기"></td>
            </tr>
        </table>
    </form>
    <p>
    <form action="list.jsp" method="post">
        <input type="submit" value="게시판가기">
    </form>
</body>
</html>
