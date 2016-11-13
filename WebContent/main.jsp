<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>メインページ</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/main.js"></script>
<link rel="stylesheet" href="css/slick-theme.css">
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<h2>複数表示（レスポンシブ）</h2>
	<ul class="slider multiple-item">
		<s:iterator value="selectList3">
			<li><img src="<s:property value="fileName"/>"  alt="" /></li>
		</s:iterator>
	</ul>

	<h2>複数表示（レスポンシブ）</h2>
	<ul class="slider multiple-item2">
		<s:iterator value="selectList2">
			<li><img src="<s:property value="fileName"/>" alt=""></li>
		</s:iterator>
	</ul>


</body>
</html>