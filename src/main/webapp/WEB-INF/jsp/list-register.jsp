<%--
  Created by IntelliJ IDEA.
  User: bearer
  Date: 18-2-27
  Time: 下午8:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tbody id="j_tb">
    <c:forEach items="${list}" var="ss">
        <tr>
            <td>${ss.product_name}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</body>
</html>
