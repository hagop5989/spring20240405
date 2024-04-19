<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        . active {
            background-color: blue;
            color: white;
        }

        button {
            margin: 3px;
        }

        .pageNumbers {
            display: flex;
            justify-content: left;
        }

        span {
            padding: 5px
        }

        table {
            width: 100%;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<h3>페이지 선택</h3>
<form>
    <input type="text" name="page" placeholder="조회할 페이지 입력">
    <button>조회</button>
</form>

<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>contact</th>
        <th>address</th>
        <th>city</th>
        <th>post</th>
        <th>country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
            <td>${customer.city}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pageNumbers">
    <form action="/main27/sub1">
        <button type="submit" name="page" value="1">first</button>
        <button type="submit" name="page" value="${prvPg}"> <<</button>
        <c:forEach var="i" begin="${firstPg}" end="${lastPg}">
            <button type="submit" name="page" value="${i}">${i}</button>
        </c:forEach>
        <button type="submit" name="page" value="${nxtPg}"> >></button>
        <button type="submit" name="page" value="${sizeNum}">last</button>
    </form>
    <hr>

</div>
</body>
</html>
