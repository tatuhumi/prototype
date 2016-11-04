<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/cafe.css">
<link rel="stylesheet" href="css/modal.css" />

<!-- jQuery読み込み -->
<script src="js/jquery-3.0.0.min.js"></script>
<!-- モーダルウィンドウのjQuery読み込み -->
<script src="js/jquery.leanModal.min.js"></script>
<!-- js読み込み -->
<script src="js/Modal.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
<body>
	<header class="contents">
		<if test="#session.userId !=null">
		<h4>
			<s:property value="#session.name" />
			でログインしています
		</h4>
		<ul class="ul">
			<li><a href="my_page">マイページ</a> <a href="main">ログアウト</a></li>
		</ul>
		</if>
		<s:form action="GoArticleAction">
		<input type ="submit" value="記事を投稿する">
		</s:form>
		<else><a rel="leanModal" href="#div787"><input value ="ログイン" class = "btn"/> <input value ="新規登録" class = "btn"/></a>
		<div id="div787">

			<p>
				ログインID
				<s:textfield name="loginId" value="" placeholder="taro"
					required="required" />
			</p>
			<p>
				パスワード
				<s:password name="password" value="" placeholder="1234"
					required="required" />
			</p>
			<s:submit type="button" value="ログイン" class="btnmodal" />

		</div>

		</else>
	</header>
</body>
</html>
