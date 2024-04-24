<%@ page import="java.util.Random" %>
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
        width: 5%;
    }

    .class01 {
        display: flex;
    }
</style>
<body>
<div style="background: skyblue">메세지 : ${message}</div>
<div class="class01">
    <div>
        <h2>새 데이터 입력</h2>
        <form action="" method="post">
            <div><span>title:</span> <input type="text" name="title" value="기본값"></div>
            <div><span>name:</span> <input type="text" name="name" value="기본값"></div>
            <div><span>age:</span> <input type="number" name="age" value="111">
            </div>
            <div><span>price:</span> <input type="number" name="price" value="222"></div>
            <div><span>published:</span> <input type="date" name="published" value="2024-04-24"></div>
            <div><span>inserted:</span> <input type="datetime-local" name="inserted" value="2024-04-04T12:12:12"></div>
            <input type="submit" value="입력">
        </form>
    </div>

    <div style="margin-left: 10px;"><h2>데이터 조회</h2>
        <form action="/main33/sub12/delete" method="post">
            <div><span>title:</span> <input type="text" value="${selected.title}" name="title"></div>
            <div><span>name:</span> <input type="text" value="${selected.name}" name="name"></div>
            <div><span>age:</span> <input type="number" value="${selected.age}" name="age"></div>
            <div><span>price:</span> <input type="number" value="${selected.price}" name="price"></div>
            <div><span>published:</span> <input type="date" value="${selected.published}" name="published"></div>
            <div><span>inserted:</span> <input type="datetime-local" value="${selected.inserted}" name="inserted"></div>
            <input style="background:lightcoral; " type="submit" value="삭제">
            <input style="background:lightslategrey; " type="submit" value="수정">
        </form>
        <form action="/main33/sub12/select">
            <input type="text" name="search" placeholder="이름을 입력하세요!">
            <input type="submit" value="조회">
        </form>
    </div>
</div>


<hr>
<h3>mytable_10 자료들</h3>
<form action="/main33/sub12">
    <button>조회</button>
</form>
<table>
    <thead>
    <tr style="background: lightslategrey; font-weight: bold; text-align: center;">
        <td>title</td>
        <td>name</td>
        <td>age</td>
        <td>price</td>
        <td>published</td>
        <td>inserted</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td> ${data.title}</td>
            <td> ${data.name}</td>
            <td> ${data.age}</td>
            <td> ${data.price}</td>
            <td> ${data.published}</td>
            <td> ${data.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>


</body>
</html>
