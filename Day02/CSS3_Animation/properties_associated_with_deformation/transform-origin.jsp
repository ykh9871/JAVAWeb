<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transform-origin 속성</title>
<style>
	.rose {transform: rotateZ(10deg);}
	.ltop .rose{ transform-origin: left top; }
	.rtop .rose { transform-origin: right top; }
	.lbottom .rose { transform-origin: left bottom; }
	.rbottom .rose { transform-origin : right bottom; }
</style>
</head>
<body>
	<div class=”origin”>
		<div class=”ltop”><img src=”images/rose.jpg” class=”rose”></div>
	</div>
	<div class=”origin”>
		<div class=”rtop”><img src=”images/rose.jpg” class=”rose”></div>
	</div>
	<div class=”origin”>
		<div class=”lbottom”><img src=”images/rose.jpg” class=”rose”></div>
	</div>
	<div class=”origin”>
		<div class=”rbottom”><img src=”images/rose.jpg” class=”rose”></div>
	</div>
</body>
</html>