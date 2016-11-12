<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>メインページ</title>
<script src="js/jquery-3.0.0.min.js"></script>
<link rel="stylesheet" href="css/main.css">
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
				<table>
					<s:iterator value="selectList">
						<td>
							<button type="submit" name="siteTitle">
								<img src="<s:property value="fileName"/>" width="300"
									height="300">aaaaaaaaaaa
							</button> <br> <s:property value="fileComment" />
						<td></td>
						<td></td>
						<td></td>
						<s:if test="%{fileNumber%5==0}">
							<tr>
							</tr>
						</s:if>
					</s:iterator>
				</table>
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