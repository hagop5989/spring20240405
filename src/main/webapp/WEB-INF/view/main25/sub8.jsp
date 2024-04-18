<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    tr, th {
        border: 1px solid black;
        padding: 5px;
    }
</style>
<body>
<form action="/main25/sub8">
    <h3>직원 조회 목록</h3>
    이름
    <input type="text" value="${prevSearch}" placeholder="조회할 고객 이름을 입력하세요." name="search">
    <input type="submit" value="조회">
    <hr>

    <table>
        <thead>
        <tr>
            <th>employeeID</th>
            <th>lastName</th>
            <th>firstName</th>
            <th>birthDate</th>
            <th>photo</th>
            <th>notes</th>
        </tr>
        </thead>
        <c:forEach items="${list}" var="list">
            <tbody>
            <tr>
                <th>${list.employeeID}</th>
                <th>${list.lastName}</th>
                <th>${list.firstName}</th>
                <th>${list.birthDate}</th>
                <th>${list.photo}</th>
                <th>${list.notes}</th>
            </tr>

            </tbody>
        </c:forEach>

    </table>
</form>
</body>
</html>
