<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>

<title>footer</title>
</head>
<body>
      <footer>
          Copyright protptype 2016.

        <s:form action="GoContactUsAction">
        <input type="submit" value="CONTACT" class="right"/>
        </s:form>

        <s:form action="GoAdminTopAction">
        <input type="submit" value="管理人" class ="right"/>
        </s:form>

      </footer>
</body>
</html>