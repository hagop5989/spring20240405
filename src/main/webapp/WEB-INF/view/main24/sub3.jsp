<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table, tr, td {
        border: 1px solid black;
    }
</style>
<body>
<h3>고객 목록</h3>
<table>
    <thead>
    <tr>
        <td>No</td>
        <td>국가</td>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="a" varStatus="status">
    <tr>
    <tbody>
    <td>${status.count}</td>
    <td>${a}</td>
    </tbody>
    </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
