<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="css/cafe.css">
<title>マイページ</title>
</head>
<body>
<h4>
<s:property value = "#session.name"/>
さんの投稿一覧</h4>

<s:form action="FileStreamAction" method="post"
		enctype="multipart/form-data">
		ファイル<input type="File" name="myFile"> <br>
		ファイル名<input
			type="text" name="myFileName"><br> 内容コメント<input
			type="text" name="comment"><br> <input type="submit"
			value="提出">
	</s:form>

</body>
</html>