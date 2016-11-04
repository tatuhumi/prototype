<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset=UTF-8>
<title>メインページ</title>
<script src="js/jquery-3.0.0.min.js"></script>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
	<header><jsp:include page="header.jsp" /></header>
	<table>
		<s:iterator value="selectList">
			<td>
				<button type="submit" name="siteTitle">
					<img src="<s:property value="fileName"/>" width="200" height="200">
				</button>
				<br> <s:property value="fileDay" /><br> <s:property
					value="fileComment" />
			</td>
		</s:iterator>
	</table>

	<footer id="footer"><jsp:include page="footer.jsp" /></footer>

</body>
</html>