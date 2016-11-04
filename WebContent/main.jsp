<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<title>メインページ</title>
<script src="js/jquery-3.0.0.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<s:include value="bootstrap/index.html"></s:include>



	<table>
		<s:iterator value="selectList">
			<td>
				<button type="submit" name="siteTitle">
					<img src="<s:property value="fileName"/>" width="200" height="200">
				</button><br>
				 <s:property value="fileDay" /><br>
				<s:property value="fileComment" />
		</td>
		</s:iterator>
	</table>



</body>
</html>