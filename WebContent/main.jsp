<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>メインページ</title>
<script src="js/main.js"></script>
<script src="js/slick.js"></script>
<script src="js/jquery-3.1.0.min.js"></script>
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/slick-theme.css">
</head>
<body>

	<table class="slider-nav">
		<s:iterator value="selectList">
			<tr>
				<s:if test="%{fileNumber%2==0}">
					<td><button type="submit" name="siteTitle">
							<img src="<s:property value="fileName"/>" width="300"
								height="300">
						</button></td>
				</s:if>
			</tr>
			<tr>
				<s:else>
					<td><button type="submit" name="siteTitle">
							<img src="<s:property value="fileName"/>" width="300"
								height="300">
						</button></td>
				</s:else>
			</tr>
		</s:iterator>
	</table>




</body>
</html>