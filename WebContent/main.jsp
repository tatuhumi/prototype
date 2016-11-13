<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>メインページ</title>
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/main.js"></script>
<link rel="stylesheet" href="css/slick-theme.css">
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<div id="contents">
		<div id="header-bk">
			<div id="header">
				<ul class="slider multiple-item3">
					<li><s:if test="#session.name==null">
							<input type="submit" value="Sign up or Login"
								class="header-btn modal-login-open btn">
						</s:if> <s:else>
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
						</div></li>
					<li>b</li>
					<li>c</li>
					<li>d</li>
					<li>e</li>
					<li>f</li>
				</ul>

			</div>
		</div>
		<div id="body-bk">
			<div id="body">



				<ul class="slider multiple-item">
					<s:iterator value="selectList3">
						<li><img src="<s:property value="fileName"/>" alt="" /></li>
					</s:iterator>
				</ul>

				<ul class="slider multiple-item2">
					<s:iterator value="selectList2">
						<li><img src="<s:property value="fileName"/>" alt=""></li>
					</s:iterator>
				</ul>

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