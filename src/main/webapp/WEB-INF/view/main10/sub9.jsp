<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    .ul li {
        width: 300px;
        border: 1px solid blue;
        background: rgba(0, 0, 0, 0.35);
        color: white
    }
</style>

<body>
<h1>
    <%--p*3>ul>li*3--%>
    <p>
    <h1>${list[0].city[0]}</h1>
    <ul class="ul">
        <li>${list[0].foods[0]}</li>
        <li>${list[0].foods[1]}</li>
    </ul>
    </p>
    <p>
    <h1>${list[0].city[1]}</h1>
    <ul class="ul">
        <li>${list[1].foods[0]}</li>
        <li>${list[1].foods[1]}</li>
    </ul>
    </p>

</h1>
</body>
</html>
