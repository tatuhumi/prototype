<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<link rel="stylesheet" href="css/footer.css">
<title>footer</title>
</head>
<body>
	<table>
		<tr>
			<td><s:if test="#session.name!=null">
					<s:form action="GoContactUsAction">
						<input type="submit" value="Contact_Us" class="btn">
					</s:form>
				</s:if></td>
			<td><s:form action="GoAboutUs">
					<input type="submit" value="About_Us" class="btn">
				</s:form></td>
			<td><s:if test="#session.userFlg==1">
					<s:form action="GoAdminTopAction">
						<input type="submit" value="AdminUser" class="btn">
					</s:form>
				</s:if></td>
		</tr>
	</table>
	Copyright protptype 2016.
</body>
</html>