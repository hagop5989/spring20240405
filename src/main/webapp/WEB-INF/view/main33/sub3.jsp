<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<h3>조회 결과</h3>

<c:forEach items="${table10}" var="table">
    <div style="width: 500px; background-color:#abcd; margin: 5px; border: 1px solid black;">
        <div>title : ${table.title}</div>
        <div>name : ${table.name}</div>
        <div>age : ${table.age}</div>
        <div>price : ${table.price}</div>
        <div>published : ${table.published}</div>
        <div>inserted : ${table.inserted}</div>
    </div>
</c:forEach>

<body>

</body>
</html>
