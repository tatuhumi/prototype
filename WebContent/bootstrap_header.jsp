<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="ja">
  <head>
  <!-- Bootstrap CDN (bootstrapをeclipseで使用するのに必要なコード)-->
<link rel="stylesheet"
    href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
    href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- Bootstrap CDN -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
    header.jumbotron {
      background: url("img/chain-232930.jpg");
      background-position: center center;
      background-size: cover;
      color: #fff;
    }
    
    header .container {
      margin-top: 8%;
    }
    
    header .midashi-btn {
      border: 1px solid #fff;
      color: #fff;
      border-radius: 0;
    }
    
    header .midashi-btn:hover {
      color: #0089ff;
      border-color: #0089ff;
    }
    
    .navbar-form {
      padding-right: 30px;
    }
    </style>
  </head>
  <body>   
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-header">

        <!--ブランド名 ロゴ名の表示-->
        <a class="navbar-brand" href="#">cafe</a>

        <!--トグルボタンの設置-->
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#nav-content">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      <div id="nav-content" class="collapse navbar-collapse">

        <!--リンクのリスト メニューリスト-->
        <ul class="nav navbar-nav">
          <li><a href="my_page">マイページ</a></li>
          <li><a href="main">ログアウト</a></li>
        <!--検索フォーム-->
        <form class="navbar-form navbar-right" role="search">
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Search">
          </div>
          <button type="submit" class="btn btn-default">検索</button>
        </form>
      </div>
    </nav>
    
    </header>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
 