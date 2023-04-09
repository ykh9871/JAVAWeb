<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scale 함수</title>
<style>
	.scalex:hover { transform: scaleX(1.2); }
	.scaley:hover { transform: scaleY(1.5); }
	.scale:hover { transform: scale(0.7); }
</style>
</head>
<body>
	<div class=”origin”>
		<div class=”scalex”><img src=”images/fruit.jpg”></div>
	</div>
	<div class=”origin”>
		<div class=”scaley”><img src=”images/fruit.jpg”></div>
	</div>
	<div class=”origin”>
		<div class=”scale”><img src=”images/fruit.jpg”> </div>
	</div>
</body>
</html>