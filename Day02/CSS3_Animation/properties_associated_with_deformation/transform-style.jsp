<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transform-style</title>
<style>
	.box1 {
		background:#82cbd8;
		transform: rotateY(45deg);
	}
	.box2 {
		background: #0d6097;
		transform-origin: left top;
		transform: rotateX(45deg);
	}
	#tr-style1 { transform-style: flat; }
	#tr-style2 { transform-style: preserve-3d; }
</style>
</head>
<body>
	<div class="container">
		<div class="box1" id="tr-style1">
			<div class="box2"></div>
		</div>
	</div>
	<div class="container">
		<div class="box1" id="tr-style2">
			<div class="box2"></div>
		</div>
	</div>
</body>
</html>