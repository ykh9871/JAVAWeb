<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>skew 함수</title>
<style>
	.skewx:hover { transform: skewX(30deg); }
	.skewy:hover { transform: skewY(15deg); }
	.skewxy:hover { transform: sk (-25deg, -15deg); }
</style>
</head>
<body>
	<div class=”origin”>
		<div class=”skewx”><img src=”images/rose.jpg”></div>
	</div>
	<div class=”origin”>
		<div class=”skewy”><img src=”images/rose.jpg”></div>
	</div>
	<div class=”origin”>
		<div class=”skewxy”><img src=”images/rose.jpg”></div>
	</div>
</body>
</html>