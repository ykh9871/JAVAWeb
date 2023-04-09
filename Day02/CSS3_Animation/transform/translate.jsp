<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>translate 함수</title>
<style>
	.movex:hover { transform: translateX(50px); }
	.movey:hover { transform: translateY(20px); }
	.movexy:hover { transform : translate(10px, 20px); }
</style>
</head>
<body>
	<div class=”origin”>
		<div class=”movex”><img src=”images/bus.jpg”></div>
	</div>
	<div class=”origin”>
		<div class=”movey”><img src=”images/bus.jpg”></div>
	</div>
	<div class=”origin”>
		<div class=”movexy”><img src=”images/bus.jpg”></div>
	</div>
</body>
</html>