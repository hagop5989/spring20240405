<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    tr, td {
        border: 1px solid black;
        padding: 5px;
    }
</style>
<body>
<form action="/main25/sub8">
    이름
    <input type="text" placeholder="조회할 고객 이름을 입력하세요." name="search">
    <input type="submit" value="조회">
    <hr>

    <table>
        <thead>
        <tr>
            <td>employeeID</td>
            <td>lastName</td>
            <td>firstName</td>
            <td>birthDate</td>
            <td>photo</td>
            <td>notes</td>
        </tr>
        </thead>
        <c:forEach items="${list}" var="list">
            <tbody>
            <tr>
                <td>${list.employeeID}</td>
                <td>${list.lastName}</td>
                <td>${list.firstName}</td>
                <td>${list.birthDate}</td>
                <td>${list.photo}</td>
                <td>${list.notes}</td>
            </tr>

            </tbody>
        </c:forEach>

    </table>
</form>
</body>
</html>
