<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/cafe.css">
<title>footer</title>
</head>
<body>
      <footer>
          Copyright cafe 2016.
        <s:form action="GoContactUsAction">
        <input type="submit" value="CONTACT" class="right"/>
        </s:form>
        <s:form action="GoAdminTopAction">
        <input type="submit" value="管理人" class ="right"/>
        </s:form>
      </footer>
</body>
</html>