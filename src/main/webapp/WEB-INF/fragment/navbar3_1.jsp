<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .active {
        background-color: lightblue;
    }
    a {
        border: 1px solid black;
    }
</style>
<div style="display: flex; justify-content: space-between">
    <div>
        <a class = "${param.current eq 'sub6' ? 'activ' : ''}" href="/main17/sub6">sub6</a>
        <a class = "${param.current eq 'sub7' ? 'activ' : ''}" href="/main17/sub7">sub7</a>
        <a class = "${param.current eq 'sub8' ? 'activ' : ''}" href="/main17/sub8">sub8</a>

    </div>
    <div>
        <c:if test="${not empty sessionScope.username}" var="loggedIn">
            ${sessionScope.username} 님
        </c:if>
        <c:if test="${not loggedIn}">
            guest 님
        </c:if>
    </div>
</div>
</body>
</html>
