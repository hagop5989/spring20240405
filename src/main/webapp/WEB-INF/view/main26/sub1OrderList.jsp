<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        tr, th, td {
            border: 1px solid black;
            padding: 5px;
            text-align: center;
            width: 20%;

    </style>
</head>
<body>
<h3>주문일로 주문 조회</h3>
<form>
    <div>시작 :
        <input type="date" value="1996-07-01" name="start"></div>
    <div>
        종료 :
        <input type="date" value="1996-07-31" name="end">
    </div>
    <div>
        <button>조회</button>
    </div>
</form>
<hr>
<c:if test="${empty orderList}" var="test">
    <h1>조회 된 내용이 없습니다!!</h1>
</c:if>
<c:if test="${!test}">
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>customer</th>
            <th>employee</th>
            <th>date</th>
            <th>shipper</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orderList}" var="order">
            <tr>
                <td>${order.id}</td>
                <td>${order.customer}</td>
                <td>${order.employee}</td>
                <td>${order.date}</td>
                <td>${order.shipper}</td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
