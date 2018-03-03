<%--
  Created by IntelliJ IDEA.
  User: wangzhuai
  Date: 2018/2/12
  Time: 下午9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>搜索</title>

    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            width: 100%;
            margin: 10px auto;
            margin: 0;
            padding: 0;
            background: #FFF;
            font-weight: 500;
            font-family: "Microsoft YaHei","宋体","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif, FreeSans, Arimo;
        }

        #container {
            width: 500px;
            height: 220px;
            margin: 100px auto;
        }
        #naifen {
            width: 500px;
            margin: 10px auto;
            padding: 20px;
            font-size: 40px;
            color: #FF6666;
            text-align:center;
        }
        div.search {padding: 25px 0;}

        form {
            position: relative;
            width: 300px;
            margin: 0 auto;
        }

        input, button {
            border: none;
            outline: none;
        }

        input {
            width: 100%;
            height: 55px;
            padding-left: 13px;
        }

        button {
            height: 55px;
            width: 70px;
            cursor: pointer;
            position: absolute;
        }

        /*搜索框1*/
        .bar1 {background: #A3D0C3;}
        .bar1 input {
            border: 2px solid #7BA7AB;
            border-radius: 5px;
            background: #F9F0DA;
            color: #9E9C9C;
        }
        .bar1 button {
            top: 0;
            right: 0;
            background: #7BA7AB;
            border-radius: 0 5px 5px 0;
        }
        .bar1 button:before {
            content: "\f002";
            font-family: FontAwesome;
            font-size: 16px;
            color: #F9F0DA;
        }
        .bar2 {

        }
    </style>
</head>
<body>
<div id="naifen" text->奶粉大数据网</div>
<div id="container">

    <div class="search bar1">
        <form action="/api/search" method="post">
            <input type="text" name="keyword" placeholder="权威查询奶粉资质，新闻等...">
            <button type="submit"></button>
        </form>
    </div>
    <div class="search bar2">
        <a href="#">最新获得资质企业</a>    <a href="#">奶粉行业新闻</a>
    </div>

</div>
<footer align="center">奶粉大数据，版权所有-2018</footer>
</body>
</html>

