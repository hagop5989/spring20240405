<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .table {
        border-collapse: collapse;
        border: 1px solid black;
        width: 100%;
    }

    .table th,
    .table td {
        border: 1px solid black;
        text-align: center;
        padding-top: 5px;
        padding-bottom: 5px;
    }
</style>
<body>
<table class="table">
    <thead>
    <tr>
        <td>NO</td>
        <td>이름</td>
        <td>팀</td>
        <td>국적</td>
        <td>종목</td>
        <td>포지션</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${playerList}" var="list" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${list.name}</td>
            <td>${list.team}</td>
            <td>${list.country}</td>
            <td>${list.event}</td>
            <td>
                <c:forEach items="${list.positions}" var="position" varStatus="status">
                    ${position}
                    <c:if test="${not status.last}">
                        ,
                    </c:if>
                </c:forEach>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
