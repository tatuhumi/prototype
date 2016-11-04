<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/cafe.css">
<title>SignUp</title>
</head>
<body>
	<footer id="header"><jsp:include page="header.jsp" /></footer>
	<table>
		<tr>
			<td>Name</td>
			<td><input type="text" name="name" size=20 placeholder="山田太郎">
			</td>
		</tr>
		<tr>
			<td>email</td>
			<td><input type="text" name="email" size=40 placeholder="半角英数">
			</td>
		</tr>
		<tr>
			<td>パスワード</td>
			<td><input type="password" name="password" size=10
				placeholder="半角英数"></td>
		</tr>
	</table>

	<br>
	<input type="submit" value="Sign Up" class="btn">
	<s:form action="goMainAcion">
		<input type="submit" value="Main" class="btn">
	</s:form>

	<footer id="footer"><jsp:include page="footer.jsp" /></footer>

</body>
</html>