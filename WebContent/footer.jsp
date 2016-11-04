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
     <table>
     <tr>
       <td><s:form action="GoContactUsAction">
        <input type="submit" value="Contact_Us" class="right"/>
        </s:form></td>
       <td><s:form action="GoAdminTopAction">
        <input type="submit" value="About_Us" class ="right"/>
        </s:form></td>
        </tr>
        </table>
     Copyright protptype 2016.
      </footer>
</body>
</html>