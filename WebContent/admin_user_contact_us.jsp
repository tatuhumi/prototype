<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="css/admin_user_contact_us.css">
<link rel="stylesheet" href="css/main.css">
<!-- jQuery読み込み -->
<script src="js/jquery-3.1.0.min.js"></script>
<!-- js読み込み -->
<script src="js/admin_user_contact_us.js"></script>
<meta charset=UTF-8>
<title>管理人問い合わせ画面</title>
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

<table border="2" align="center">
		<tbody id="list_body">
			<tr>
				<th>件名</th>
				<th>氏名</th>
				<th>メールアドレス</th>
				<th>お問い合わせ内容</th>
				<th>お問い合わせ日時</th>
			</tr>
			<s:iterator value="List">
				<input type="hidden" value="<s:property value="contactId" />"
					class="contactId">
				<tr>
					<td class="contentVal"><s:property value="val" /></td>
					<td class="contentName"><s:property value="contactName" /></td>
					<td class="contentMail"><s:property value="contactMail" /></td>
					<td class="contentContent"><s:property value="contactContent" /></td>
					<td class="contentDate"><s:property value="contactDate" /></td>
					<s:if test="%{primarity == 0}">
						<td><input type="button" value="削除" class="modal-open"></td>
						<td><input type="button" value="返信" class="modal-open-edit"></td>
						<td><s:form action="ContactPrimarityAction">
								<input type="hidden" name="contactId"
									value="<s:property value="contactId" />">
								<input type="hidden" name="primarity" value="1">
								<input type="submit" value="保護">
							</s:form></td>
					</s:if>
					<s:else>
						<td><s:form action="ContactPrimarityAction">
								<input type="hidden" name="contactId"
									value="<s:property value="contactId" />">
								<input type="hidden" name="primarity" value="0">
								<input type="submit" value="保護">
							</s:form></td>
					</s:else>

				</tr>
			</s:iterator>
		</tbody>
	</table>


	<div class="modal-main">
		以下の内容を削除してもよろしいですか？
		<table border="1">
			<tr>
				<td>件名</td>
				<td><span class="modal-contentval"></span></td>
			</tr>
			<tr>
				<td>氏名</td>
				<td><span class="modal-contentName"></span></td>
			</tr>
			<tr>
				<td>メールアドレス</td>
				<td><span class="modal-contentMail"></span></td>
			</tr>
			<tr>
				<td>お問い合わせ日時</td>
				<td><span class="modal-contentDate"></span></td>
			</tr>
			<tr>
				<td>お問い合わせ内容</td>
				<td><span class="modal-contentContent"></span></td>
			</tr>
		</table>
		<s:form action="ContactUsDelete">
			<input type="hidden" name="contactId" class="modal-id">
			<input type="submit" value="削除" class="true-delete">
		</s:form>
		<input type="button" id="close-modal" value="閉じる">
	</div>

	<div class="modal-main-edit">
		以下の内容で返信してもよろしいですか？

		<table border="1">
			<tr>
				<td>件名</td>
				<td><span class="modal-contentval"></span></td>
			</tr>
			<tr>
				<td>氏名</td>
				<td><span class="modal-contentName"></span></td>
			</tr>
			<tr>
				<td>お問い合わせ内容</td>
				<td><span class="modal-contentContent"></span></td>
			</tr>
			<tr>
				<td>返信内容</td>
				<td><textarea name="replay" rows="5" cols="40"></textarea></td>
			</tr>
		</table>

		<input type="hidden" name="contactId" class="modal-id"> <input
			type="submit" value="編集" class="true-delete"> <input
			type="button" id="close-modal-edit" value="閉じる">
	</div>



	<div id="contents">
		<br>
	</div>
	<div id="pager">
		<div id="page_ctrl">
			<ul id="page_before">
				<li id="page_prev">prev</li>
			</ul>
			<ul id="page_number"></ul>
			<ul id="page_after">
				<li id="page_next">next</li>
			</ul>
		</div>
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