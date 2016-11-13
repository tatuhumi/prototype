<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>マイページ</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/my_page.css">
<script src="js/jquery-3.1.0.min.js"></script>
<script src="js/my_page.js"></script>
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


				<h4>
					<s:property value="#session.name" />
					さんの投稿一覧
				</h4>

				<div id="my-Submit-click">画像投稿をおこなう(Click)</div>

				<div id="my-Submit">
					<table class="sample_01">
						<s:form action="FileStreamAction" method="post"
							enctype="multipart/form-data">
							<tr>
								<td>ファイル</td>
								<td><input type="File" name="myFile"></td>
							</tr>
							<tr>
								<td>ファイル名</td>
								<td><input type="text" name="myFileName"></td>
							</tr>
							<tr>
								<td>内容コメント</td>
								<td><input type="text" name="comment">
								<td>
							</tr>
							<tr>
								<td><input type="submit" value="提出"></td>
							</tr>
						</s:form>
					</table>
					<br> <br>「投稿の際に、本来のファイル名の拡張子は変更しないで下さい！」 <br> <br>
					これでメイン画面に画像が反映されない方は以下を試して下さい <br> Eclipseで <br>
					１メニューから「ウィンドウ」⇒「設定」を選択 <br> ２左のメニューの「一般」⇒「ワークスペース」を選択 <br>
					３ネイティブ・フックまたはポーリングを使用してリフレッシュ」を選択 <br> ４「OK」ボタンをクリック。 <br>

					<div id="my-Submit-close">閉じる(Click)</div>
				</div>


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