<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>管理人TOPページ</title>
<link rel="stylesheet" href="css/admin_top.css">
</head>
<body>

	<br>
	<br>
	<br>
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

	<footer id="footer"><jsp:include page="footer.jsp" /></footer>
</body>
</html>