<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/cafe.css">
<title>記事投稿</title>
</head>
<body>
<div class="article">
    <h3>
      投稿する
    </h3>
    <input placeholder="Name" type="text" name="name">
    <input placeholder="Image Url" type="text" name="image">
    <textarea cols="30" name="text" placeholder="text" rows="10"></textarea>
    <input type="submit" value="SENT">
</div>
</body>
</html>