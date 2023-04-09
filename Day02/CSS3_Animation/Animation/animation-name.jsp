<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>animation-name 속성</title>
	<style>
		#box1 {
			background-color: #4cff00;
			border: 1px solid black;
			animation-name: shape;
			animation-duration: 3s;
			width: 100px;
			height: 100px;
			margin: 20px;
			display: inline-block;
		}

		#box2 {
			background-color: #8f06b0;
			border: 1px solid black;
			animation-name: rotate;
			animation-duration: 3s;
			width: 100px;
			height: 100px;
			margin: 20px;
			display: inline-block;
		}

		@keyframes shape {
			from {
				border: 1px solid black;
			}
			to {
				border: 1px solid black;
				border-radius: 50%;
			}
		}

		@keyframes rotate {
			from {
				transform: rotate(0deg);
			}
			to {
				transform: rotate(45deg);
			}
		}
	</style>
</head>
<body>
	<div id="box1"></div>
	<div id="box2"></div>
</body>
</html>
