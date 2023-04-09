<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>@keyframes 속성</title>
	<style>
		div {
			width: 100px;
			height: 100px;
			background-color: blue;
			animation-name: change-bg-anim;
			animation-duration: 3s;
			margin: 20px;
			display: inline-block;
		}

		@keyframes change-bg-anim {
			from {
				background-color: blue;
				border: 1px solid black;
			}
			to {
				background-color: #a5d6ff;
				border: 1px solid blue;
				border-radius: 50%;
			}
		}
	</style>
</head>
<body>
	<div></div>
</body>
</html>
