<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>animation 속성</title>
	<style>
		.box {
			width: 60px;
			height: 60px;
			margin: 60px;
			animation: rotate 1.5s infinite, background 1.5s infinite alternate;
		}

		@keyframes rotate {
			from { transform: perspective(120px) rotateX(0deg) rotateY(0deg); }
			50% { transform: perspective(120px) rotateX(-180deg) rotateY(0deg); }
			to { transform: perspective(120px) rotateX(-180deg) rotateY(-180deg); }
		}

		@keyframes background {
			from { background-color: red; }
			50% { background-color: green; }
			to { background-color: blue; }
		}
	</style>
</head>
<body>
	<div class="box"></div>
</body>
</html>
