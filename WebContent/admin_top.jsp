<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>管理人TOPページ</title>
<link rel="stylesheet" href="css/admin_top.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>
<div id="contents">
		<div id="header-bk">
			<div id="header">
				<header><jsp:include page="header.jsp" /></header>
			</div>
		</div>
		<div id="body-bk">
			<div id="body">



	<div class="center">
		<s:form action="GoAdminUserInfo">
			<input type="submit" value="GoAdminUserInfo" class="btn">
		</s:form>
		<br> <br>
		<s:form action="GoAdminUserContactUs">
			<input type="submit" value="GoAdminUserContactUs" class="btn">
		</s:form>
		<br> <br>
		<s:form action="GoAdminArticle">
			<input type="submit" value="GoAdminArticle" class="btn">
		</s:form>
		<br> <br>
		<form>
			<input type="button" value="戻る" onclick="history.back()" class="btn">
		</form>
	</div>



			</div>
		</div>
		<div id="footer-bk">
			<div id="footer">
				<footer><jsp:include page="footer.jsp" /></footer>
			</div>
		</div>
	</div>

</body>
</html>