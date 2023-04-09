<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>backface-visibility 속성</title>
<style>
	.box {
		background:#82cbd8;
		transform: rotateY(135deg);
	}
	#back1 { backface-visibility: hidden; }
	#back2 { backface-vis : visible; }
</style>
</head>
<body>
	<div class=”container”>
		<div class=”box” id=”back1”><h1>BACK</h1></div>
	</div>
	<div class=”container”>
		<div class=”box” id=”back2”><h1>BACK</h1></div>
	</div>
</body>
</html>