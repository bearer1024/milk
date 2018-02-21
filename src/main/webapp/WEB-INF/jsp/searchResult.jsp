<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>页面</title>

    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
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

        li {list-style-type:none;}
    </style>
</head>
<body>
<div id="container">
    <p>搜索结果页面</p>
    <table border="2px" width="800" >
    <c:forEach items="${resultList}" var="ss">
        <tr>
            <td>${ss.id}</td>
            <td>${ss.application_number}</td>
            <td>${ss.product_name}</td>
        </tr>
    </c:forEach>
    </table>
</div>
</body>
</html>
