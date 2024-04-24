<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table, tr, th, td {
        border-collapse: collapse;
        border: 1px solid black;
    }

    span {
        display: block;
        width: 200px;
    }

    td {
        width: 5%
    }
</style>
<body>
<h3>새 데이터 입력</h3>
<form method="post">
    <div><span>문자열</span><input type="text" name="str" value="기본 문자열"></div>
    <div><span>정수</span><input type="number" name="intValue" value="100"></div>
    <div><span>실수</span><input type="number" name="realValue" value="0.01"></div>
    <div><span>날짜</span><input type="text" name="dateValue" value="2024-03-03"></div>
    <div><span>날짜,시간</span><input type="text" name="timeValue" value="2024-03-04T12:12:12"></div>
    <div><input type="submit" value="저장"></div>
</form>

<h3>my_table9 자료들</h3>
<table>
    <thead>
    <tr>
        <th>문자열</th>
        <th>정수</th>
        <th>실수</th>
        <th>날짜</th>
        <th>날짜&시간</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td>${data.stringCol}</td>
            <td>${data.intCol}</td>
            <td>${data.decCol}</td>
            <td>${data.dateCol}</td>
            <td>${data.dateTimeCol}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
