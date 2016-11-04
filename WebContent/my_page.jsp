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
<footer id="header"><jsp:include page="header.jsp" /></footer>
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

<footer id="footer"><jsp:include page="footer.jsp" /></footer>

</body>
</html>