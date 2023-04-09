<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>source 태그</title>
</head>
<body>
	<video controls>
		<source src="media/Painting.ogv" type="video/ogg">
		<source src="media/Painting.mp4" type="video/mp4">
		<source src="media/Painting.webm" type="video/webm">
	</video>
	<!-- HTML5를 지원하지 않는 브라우저에서는?
	 HTML5 지원 브라우저가 필요하다는 대체 텍스트 표시
	 	<video controls>
			<source src=”media/Painting.mp4” type=”video/mp4”>
			<source src=”media/Painting.webm” type=”video/webm”>
			<source src=”media/Painting.ogv” type=”video/ogg”>
			이 영상을 보기 위해서는 HTML5를 지원하는 브라우저가 필요합니다.
		</video>
		
		플래시 무비로 변환한 후 <embed> 태그나 <object> 태그로 삽입
		<video controls>
			<source src=”media/Painting.mp4” type=”video/mp4”>
			<source src=”media/Painting.webm” type=”video/webm”>
			<source src=”media/Painting.ogv” type=”video/ogg”>
			<object data=”media/Painting.swf” type=”application/xshockwave-flash”></object>
		</video>
	 -->
</body>
</html>