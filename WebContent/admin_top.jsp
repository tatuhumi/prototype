<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
<body>

<s:form action="GoAdminUserInfo">
<input type="submit" value="GoAdminUserInfo">
</s:form>

<s:form action="GoAdminUserContactUs">
<input type="submit" value="GoAdminUserContactUs">
</s:form>

<s:form action="GoAdminArticle">
<input type="submit" value="GoAdminArticle">
</s:form>

<form>
	<input type="button" value="戻る" onclick="history.back()">
	</form>
</body>
</html>