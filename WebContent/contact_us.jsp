<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8>
<title>お問い合わせ</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/contact_us.css">
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


	<br>
	<br>
	<div class="text-center">
		<s:form action="ContactAction">
			<table border="1" align="center">
				<tr>
					<td>件名</td>
					<td>
						<div class="btn-select">
							<select name="val" style="width: 330px" class='select'>
								<option value="このサイトについて">このサイトについて</option>
								<option value="Rewriteについて">Rewriteについて</option>
								<option value="Uematsuについて">Uematsuについて</option>
								<option value="その他">その他</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>氏名</td>
					<td><input type="text" name="contactName" required size="50"
						placeholder="半角英数字のみ" required></td>
				</tr>
				<tr>
					<td>メールアドレス</td>
					<td><input type="text" name="contactMail" required size="50"
						placeholder="半角英数字のみ" required></td>
				</tr>
				<tr>
					<td>お問い合わせ内容</td>
					<td><textarea name="contactContent" required rows="4"
							cols="38" placeholder="半角英数字のみ" required></textarea></td>
				</tr>
			</table>
			<input type="submit" value="送信" class="submit_btn">
		</s:form>
		<s:property value="comment" />
	</div>

<form>
	<input type="button" value="戻る" onclick="history.back()">
	</form>


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