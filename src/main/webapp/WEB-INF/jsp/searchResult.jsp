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
        td img {
            float: left;
        }
        tbody tr {
            background-color:#f0f0f0;
            padding: 10px;
        }
        tbody tr:hover {
            cursor:pointer;
            background-color:#fafafa;
        }
        #resutl {
            font-size: 20px;
            color: red;
            padding: 10px;
        }
        .zizhimg {
            width: 60px;
            height: 60px;
            padding-right: 20px;
        }
        li {
            list-style-type: none;
            padding: 5px;
        }
    </style>
</head>
<body>
<div class="wrap">
    <table>
        <div id="resutl">
            根据产品名称查询结果：
        </div>
        <tbody id="j_tb">

        <c:if test="${empty resultList} == 0">
            没有查到结果，请重新查询。
        </c:if>
        <c:forEach items="${resultList}" var="ss">
            <tr>
                <td><a href="/api/productDetail?id=${ss.id}"><img src="../../images/zizhi.png" class="zizhimg"><li>产品名称 ${ss.product_name}</li>
                    <li>认证编码 ${ss.application_number}</li></a></td>
            </tr>
        </c:forEach>
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




