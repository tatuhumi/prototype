<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8>
<title>Insert title here</title>
</head>
 <body>
<footer id="header"><jsp:include page="header.jsp" /></footer>

<form>
	<input type="button" value="戻る" onclick="history.back()">
	</form>

<footer id="footer"><jsp:include page="footer.jsp" /></footer>
</body>
</html>