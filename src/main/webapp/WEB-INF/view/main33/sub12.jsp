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

    form {
        display: inline;
    }

</style>
<body>
<b>
    <div style="background: skyblue">메세지 : ${message}</div>
</b>
<div style="margin-left: 10px;"><h2>데이터 입력 & 조회 & 수정 & 삭제</h2>
    <%--수정--%>
    <form action="${selected == null ? '':'/main33/sub12/update'}" method="post">
        <input type="submit" value="입력">
        <%--<form action="/main33/sub12/update" method="post">--%>
        <div><span>title:</span>
            <input type="text" value="${selected != null ? selected.title:"기본값"}" name="title">
        </div>
        <div><span>name:</span>
            <input type="text" value="${selected != null ? selected.name: "기본값"}" name="name">
        </div>
        <div><span>age:</span>
            <input type="number" value="${selected != null ? selected.age : 10}" name="age">
        </div>
        <div><span>price:</span>
            <input type="number" value="${selected != null ? selected.price : 1000}" name="price">
        </div>
        <div><span>published:</span>
            <input type="date" value="${empty selected != null ? selected.published :'2024-04-25'}"
                   name="published"></div>
        <div><span>inserted:</span>
            <input type="datetime-local"
                   value="${empty selected != null ? selected.inserted :'2024-04-04T12:12:12'}"
                   name="inserted"></div>

        <input type="hidden" name="prevName" value="${selected.name}">
        <input style="background:lightslategrey; " type="submit" value="수정">
        <%--        </form>--%>
    </form>

    <%--삭제--%>
    <form action="/main33/sub12/delete" method="post">
        <input style="background:lightcoral; " type="submit" value="삭제">
        <div><input type="hidden" value="${selected.name}" name="name"></div>
    </form>

    <%--조회--%>
    <form action="/main33/sub12/select">
        <input type="text" name="search" placeholder="이름을 입력하세요!">
        <input type="submit" value="조회">
    </form>
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
