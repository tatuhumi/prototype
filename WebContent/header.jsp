<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery読み込み -->
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/header.js"></script>
<link rel="stylesheet" href="css/header.css">
<meta charset=UTF-8>
<title>header</title>
<body>
	<s:if test="#session.name==null">
		<input type="submit" value="Sign up or Login"
			class="header-btn modal-login-open btn">
	</s:if>
	<s:else>
		<s:property value="#session.name" />
				でログインしています
			<table>
			<tr>
				<td><s:form action="GoMyPageAction">
						<input type="submit" value="My page">
					</s:form></td>
				<td><s:form action="GoLogoutAction">
						<input type="submit" value="Logout">
					</s:form></td>
			</tr>
		</table>
	</s:else>

	<div class="modal-main">
		<br> 新規登録を行います。<br>
		<s:form action="GoLoginAction">
			<table border="1" class="sample_01">
				<tr>
					<td>名前</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>パスワード</td>
					<td><input type="text" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="登録">
		</s:form>
		<br> ログインを行います。<br>
		<s:form action="LoginConfirmAction">
			<table border="1" class="sample_01">
				<tr>
					<td>名前</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>パスワード</td>
					<td><input type="text" name="password"></td>
				</tr>
			</table>
			<input type="submit" value="ログイン">
		</s:form>
		<div class="close-modal">閉じる</div>
	</div>


</body>
</html>
