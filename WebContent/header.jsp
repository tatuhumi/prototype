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
<body id="header">
		<s:if test="#session.name==null">
			<input type="submit" value="新規登録" class="header-btn modal-login-open">
			<br>
			<br>
			<br>
			<br>
		</s:if>
		<s:else>
				<s:property value="#session.name" />
				でログインしています
			<table>
				<tr>
					<td><s:form action="GoMyPageAction">
							<input type="submit" value="マイページ" class="header-btn">
						</s:form></td>
					<td><s:form action="GoLogoutAction">
							<input type="submit" value="ログアウト" class="header-btn">
						</s:form></td>
				</tr>
			</table>
			<s:form action="SearchResultAction">
				<input type="text" name="summary">
				<input type="submit" value="キーワード検索">
			</s:form>
		</s:else>
	<br>
	<br>
	<br>
	<div class="modal-main">
		新規登録を行います。<br>
		<s:form action="GoLoginAction">
			<table border="1">
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
		<br>
		<div class="close-modal">閉じる</div>
	</div>


</body>
</html>
