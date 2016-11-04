<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>マイページ</title>
</head>
<body>

	<h4>
		<s:property value="#session.name" />
		さんの投稿一覧
	</h4>

	<s:form action="FileStreamAction" method="post"
		enctype="multipart/form-data">
		ファイル<input type="File" name="myFile">
		<br>
		ファイル名<input type="text" name="myFileName">
		<br> 内容コメント<input type="text" name="comment">
		<br>
		<input type="submit" value="提出">
	</s:form>
	<br>
	<br>
	<br>
	<br> これでメイン画面に画像が反映されない方は以下を試して下さい
	<br> Eclipseで
	<br> １メニューから「ウィンドウ」⇒「設定」を選択
	<br> ２左のメニューの「一般」⇒「ワークスペース」を選択
	<br> ３ネイティブ・フックまたはポーリングを使用してリフレッシュ」を選択。 ４「OK」ボタンをクリック。
	<br>

	<footer id="footer"><jsp:include page="footer.jsp" /></footer>

</body>
</html>