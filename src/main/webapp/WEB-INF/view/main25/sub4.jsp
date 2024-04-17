<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    th, td {
        text-align: center;
        width: 30%;
        border: 1px solid black;
        padding: 5px;
    }
</style>
<body>

<form action="/main25/sub4">
    <input type="text" name="name" placeholder="이름을 입력해주세요!">
    <input type="submit" value="제출">
</form>
<c:forEach items="${information}" var="info">
    <%--    <input type="text" readonly>${info.customerId}--%>
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>customerName</th>
            <th>contactName</th>
            <th>address</th>
            <th>city</th>
            <th>postal</th>
            <th>country</th>
        </tr>
        </thead>
        <tr>
            <td>${info.customerId}</td>
            <td>${info.customerName}</td>
            <td>${info.contactName}</td>
            <td>${info.address}</td>
            <td>${info.city}</td>
            <td>${info.country}</td>
            <td>${info.postalCode}</td>
        </tr>
    </table>

</c:forEach>

</body>
</html>
