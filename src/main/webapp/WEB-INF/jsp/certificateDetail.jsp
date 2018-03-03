<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>搜索结果页面</title>

    <style>
        * {
            padding:0;
            margin:0;
        }
        .wrap {
            width:500px;
            margin:20px auto 0;
        }
        table {
            border-collapse:collapse;
            border-spacing:0;

            width:500px;
        }
        td {
            background-color:#DDF0ED;
            border-bottom:1px solid #d0d0d0;
            color:#404060;
            padding:10px;
            font:14px "微软雅黑";
        }
        tbody tr {
            background-color:#f0f0f0;
        }
        tbody tr:hover {
            cursor:pointer;
            background-color:#fafafa;
        }
    </style>
</head>
<body>
<div class="wrap">
    <table>
        <tbody id="j_tb">
        <tr>
            <td>产品名称：${result.product_name}</td>
        </tr>
        <tr>
            <td>受理编号：${result.application_number}</td>
        </tr>
        <tr>
            <td>奶粉段位：${result.powder_level}</td>
        </tr>
        <tr>
            <td>申请人名称：${result.applicant_name}</td>
        </tr>
        <tr>
            <td>公布证书待领信息的时间：${result.publish_certificate_time}</td>
        </tr>
        </tbody>
    </table>
</div>

<script>
    var all = document.getElementById("j_cbAll");
    var tbody = document.getElementById("j_tb");
    var checkboxs = tbody.getElementsByTagName("input");
    all.onclick = function() {
        for (var i = 0; i < checkboxs.length; i++) {
            var checkbox = checkboxs[i];
            checkbox.checked = this.checked;
        }
    };
    for (var i = 0; i < checkboxs.length; i++) {
        checkboxs[i].onclick = function() {
            var isCheckedAll = true;
            for (var i = 0; i < checkboxs.length; i++) {
                if (!checkboxs[i].checked) {
                    isCheckedAll = false;
                    break;
                }
            }
            all.checked = isCheckedAll;
        };
    }</script>
<div style="text-align:center;">

</div>
</body>
</html>

