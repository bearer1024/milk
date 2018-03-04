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
    <link href="assets/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="assets/bootstrap.min.css" >

    <link rel="stylesheet" type="text/css" href="assets/index.css">
</head>
<body>
<div id="whole">
<div id="header" ><h1 id="header_title">奶粉大数据网</h1></div>
<div id="container">

    <div class="search bar1" id="search_bar">
        <form action="api/search" method="post">
            <input type="text" name="keyword" placeholder="权威查询奶粉资质，新闻等...">
            <button type="submit">搜索</button>
        </form>
    </div>

    <div id="brand_pic">

    </div>

    <div class="div-table">
<%--        <div class="div-table-row">
            <div class="div-table-col-left"><h1>1</h1></div>
            <div class="div-table-col-mid">爱他美</div>
            <div class="div-table-col-right"></div>
        </div>
        <div class="div-table-row">
            <div class="div-table-col-left"><h1>2</h1></div>
            <div class="div-table-col-mid">天籁</div>
            <div class="div-table-col-right"></div>
        </div>
        <div class="div-table-row">
            <div class="div-table-col-left"><h1>3</h1></div>
            <div class="div-table-col-mid">合生元</div>
            <div class="div-table-col-right"></div>
        </div>--%>
    <div class="div-table-row">
        <div class="div-table-col-left"><h2>1</h2></div>
        <div class="div-table-col-mid"><h2>爱他美</h2></div>
        <div class="div-table-col-right"></div>
    </div>
    <div class="div-table-row">
        <div class="div-table-col-left"><h2>2</h2></div>
        <div class="div-table-col-mid"><h2>天籁</h2></div>
        <div class="div-table-col-right"></div>
    </div>
    <div class="div-table-row">
        <div class="div-table-col-left"><h2>3</h2></div>
        <div class="div-table-col-mid"><h2>合生元</h2></div>
        <div class="div-table-col-right"></div>
    </div>




    </div>
    <div id="news_info">
        <a href="#">最新获得资质企业</a>
        <a href="#">奶粉行业新闻</a>
        <a href="#">投票排行</a>
    </div>


</div>
    <div id="footer">
        <footer class="footer">奶粉大数据，版权所有-2018</footer>
    </div>
</div>
</body>
</html>

