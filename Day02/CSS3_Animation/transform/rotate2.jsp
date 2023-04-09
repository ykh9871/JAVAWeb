<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rotate 함수 3차원</title>
<style>
	.origin { perspective: 200px; }
	.rotatex { transform: rotateX(45deg); }
	.rotatey { transform: rotateY (45deg); }
	.rotatez { transform: rotateZ(45deg); }
	.rotatexyz { transform: rotate3d(2.5, 1.2, -1.5, 45deg); }
</style>
</head>
<body>
	<div class=”origin”><div class=”rotatex”><img src=”images/fruit.jpg” alt=””></div></div>
	<div class=”origin”><div class=”rotatey”><img src=”images/fruit.jpg” alt=””></div></div>
	<div class=”origin”><div class=”rotatez”><img src=”images/fruit.jpg” alt=””></div></div>
	<div class=”origin”><div class=”rotatexyz”><img src=”images/fruit.jpg” alt=””></div></div>
</body>
</html>