<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        .active {
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
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>lastname</th>
        <th>firstname</th>
        <th>birthDate</th>
        <th>photo</th>
        <th>notes</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${employees}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.lastName}</td>
            <td>${employee.firstName}</td>
            <td>${employee.notes}</td>
            <td>${employee.photo}</td>
            <td>${employee.birthDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div class="pageNumbers">
    <form action="/main27/sub2">
        <c:if test="${nowPage != 1}">
            <button type="submit" name="page" value="1">first</button>
            <button type="submit" name="page" value="${prvPg}"> <<</button>
        </c:if>
        <c:forEach var="i" begin="${firstPg}" end="${lastPg}">
            <button class="${i eq nowPage ? 'active' : ''}"
                    type="submit" name="page"
                    value="${i}">${i}</button>
        </c:forEach>
        <c:if test="${nowPage != sizeNum}">
            <button type="submit" name="page" value="${nxtPg}"> >></button>
            <button type="submit" name="page" value="${sizeNum}">last</button>
        </c:if>
    </form>


</body>
</html>
